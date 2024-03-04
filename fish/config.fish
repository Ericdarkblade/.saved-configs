if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vi='nvim'
    alias vim='nvim'
    alias open='wslview'
    alias pwsh='pwsh.exe'

    export BROWSER=wslview

    #alias oldvim ='/usr/bin/vim'
    function oldvim --wraps =/usr/bin/vim --description 'alias oldvim =/usr/bin/vim';  /usr/bin/vim $argv; end

    fish_vi_key_bindings
    
    bind --mode insert --sets-mode default \cc repaint
    #bind -M insert \cc 'set fish_bind_mode default; commandline -f repaint'

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    
    function vman -a 'manual' -d 'Uses Neovim to read ManPages';
        nvim -c "Man $manual | only"
    end
end

# Created by `pipx` on 2024-02-15 22:21:53
set PATH $PATH /home/eric/.local/bin
