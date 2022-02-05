# https://formulae.brew.sh/formula/antigen
source $(/opt/homebrew/bin/brew --prefix)/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle command-not-found
antigen bundle esc/conda-zsh-completion

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle bckim92/zsh-autoswitch-conda
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle junegunn/fzf
antigen bundle unixorn/fzf-zsh-plugin
antigen bundle Aloxaf/fzf-tab
antigen bundle athityakumar/colorls

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# https://github.com/esc/conda-zsh-completion/blob/master/_conda
zstyle ':completion::complete:*' use-cache 1
zstyle ":conda_zsh_completion:*" use-groups true

export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/14/bin"
