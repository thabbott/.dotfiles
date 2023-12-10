export PATH="$HOME/nvim-macos/bin:$HOME/.local/scripts:$PATH"

alias nvo='fd --type f --exclude .git | fzf-tmux -p --reverse | xargs nvim'
alias tile='yabai --start-service'
alias untile='yabai --stop-service'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/thabbott/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/thabbott/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/thabbott/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/thabbott/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

