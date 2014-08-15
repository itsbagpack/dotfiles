# secrets
[ -f ~/dotfiles/personal ] && source ~/dotfiles/personal

# completion
[ -f /etc/bash_completion ] && source /etc/bash_completion

# auto-jump
[[ -s /etc/profile.d/autojump.sh ]] && . /etc/profile.d/autojump.sh

# load files
for file in ~/dotfiles/bash/{bash_prompt,exports,functions,aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file

# fix font smoothing on macs
if [[ $platform = 'darwin' ]]; then
  defaults -currentHost write -g AppleFontSmoothing -int 2
fi

#rbenv
if [ $(command -v rbenv 2>&1) ]; then eval "$(rbenv init - --no-rehash)"; fi

# new Cisco VPN
export FIX_VPN_POW=yes
export FIX_VPN_MINIRAISER=yes
eval "$(rbenv init -)"
