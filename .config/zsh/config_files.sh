export EDITOR='code'
export FLASK_ENV=development

if [[ $EDITOR == "vim" || $EDITOR == "nvim" ]]; then
    alias zshconfig='$EDITOR ~/.config/zsh'
    alias nvimconfig='$EDITOR ~/.config/nvim'
elif [[ $EDITOR == "code" ]]; then
    alias zshconfig='$EDITOR ~/.config/zsh'
    alias nvimconfig='$EDITOR ~/.config/nvim'
fi
alias kittyconfig='$EDITOR ~/.config/kitty/kitty.conf'
alias i3config='$EDITOR ~/.config/i3/config'
alias vimconfig='$EDITOR ~/.vimrc'
alias polybarconfig='$EDITOR ~/.config/polybar/config'
alias yabaiconfig='$EDITOR ~/.config/yabai/yabairc'
alias skhdconfig='$EDITOR ~/.config/skhd/skhdrc'
alias spacebarconfig='$EDITOR ~/.config/spacebar/spacebarrc'
alias mtmrconfig='code ~/.config/mtmr/items.json'
alias rangerconfig='$EDITOR ~/.config/ranger/rc.conf'

