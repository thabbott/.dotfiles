export PATH="$HOME/nvim-macos/bin:$HOME/.local/scripts:$PATH"

alias nvo='fd --type f --exclude .git | fzf-tmux -p --reverse | xargs nvim'
alias tile='yabai --start-service'
alias untile='yabai --stop-service'

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git

preexec() {
    cmd_start="$SECONDS"
    cmd_started=true
}

precmd() {
    local exit_code=$?
    vcs_info
    local cmd_end="$SECONDS"
    elapsed=$((cmd_end-cmd_start))
    if [[ $cmd_started == true ]]; then
        print -P '%F{#555555}${elapsed}s%f'
    fi
    cmd_started=false
}


zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "%F{green}+%f"
zstyle ':vcs_info:*' unstagedstr "%F{red}+%f"
zstyle ':vcs_info:git*' formats "%s(%b)%c%u"
zstyle ':vcs_info:git*' actionformats "%a %s(%b)%c%u"

setopt prompt_subst
export PROMPT='%(?.%F{green}%?.%F{red}%?)%f %F{blue}%1~%f → '
export RPROMPT='${vcs_info_msg_0_}'
