function sudohelix --wraps='SUDO_EDITOR=helix sudoedit' --description 'alias sudohelix=SUDO_EDITOR=helix sudoedit'
    SUDO_EDITOR=helix sudoedit $argv
end
