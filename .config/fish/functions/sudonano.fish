function sudonano --wraps='SUDO_EDITOR=nano sudoedit' --description 'alias sudonano=SUDO_EDITOR=nano sudoedit'
    SUDO_EDITOR=nano sudoedit $argv
end
