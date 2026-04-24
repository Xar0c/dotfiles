(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'use-package)

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file :noerror))

(use-package ef-themes
  :ensure t
  :config
  (ef-themes-load-theme 'ef-duo-dark))

(use-package olivetti
  :ensure t
  :custom (olivetti-body-width 80)
  :hook (org-mode . olivetti-mode))

(use-package adaptive-wrap
  :ensure t
  :hook (org-mode . adaptive-wrap-prefix-mode))

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq org-startup-with-inline-images t)

(set-face-attribute 'default nil :height 120)

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(windmove-default-keybindings)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

(setq extra-file (concat user-emacs-directory "extra.el"))
(when (file-exists-p extra-file)
  (load extra-file :noerror))
