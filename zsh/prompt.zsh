# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{blue}%n %F{magenta}%0~ %F{red}(${vcs_info_msg_0_}) %F{gray}%(!.#.$) %f'
