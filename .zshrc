source "${HOME}/.zgenom/zgenom.zsh"
if ! zgenom saved; then

  # Use oh-my-zsh framework
  zgenom oh-my-zsh

  # Bundles from oh-my-zsh
  zgenom oh-my-zsh plugins/command-not-found
  zgenom oh-my-zsh plugins/fzf
  zgenom oh-my-zsh plugins/git
  zgenom oh-my-zsh plugins/autojump
  zgenom oh-my-zsh plugins/thefuck

  # Bundles from third parties
  zgenom load grigorii-zander/zsh-npm-scripts-autocomplete
  zgenom load paulirish/git-open
  zgenom load popstas/zsh-command-time
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-completions
  zgenom load zsh-users/zsh-history-substring-search
  zgenom load zsh-users/zsh-syntax-highlighting

  # Load the theme
  zgenom oh-my-zsh themes/avit

  # Generate zgenom static init
  zgenom save
fi
