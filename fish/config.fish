if status is-interactive
    # Commands to run in interactive sessions can go here

    fish_vi_key_bindings
    
    alias vim='nvim'
    alias pwsh='pwsh.exe'

    bind --mode insert --sets-mode default \cc repaint
    #bind -M insert \cc 'set fish_bind_mode default; commandline -f repaint'

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    
    function vman -a 'manual' -d 'Uses Neovim to read ManPages';
        nvim -c "Man $manual | only"
    end
end
