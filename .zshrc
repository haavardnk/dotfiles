if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=/opt/homebrew/share/android-commandlinetools/platform-tools:/opt/homebrew/opt/python@3.12/libexec/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/Privileges.app/Contents/Resources:/usr/local/share/dotnet:~/.dotnet/tools:/Users/HAKR/.cargo/bin

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme

source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"
source <(fzf --zsh)

alias cd="z"
alias ls='eza $eza_params'
alias l='eza --git-ignore $eza_params'
alias ll='eza --all --header --long $eza_params'
alias llm='eza --all --header --long --sort=modified $eza_params'
alias la='eza -lbhHigUmuSa'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree $eza_params'
alias tree='eza --tree $eza_params'
alias tmux="tmux a || tmux"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
HISTFILE=~/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
