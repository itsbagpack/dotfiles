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

# rvm
#export rvm_project_rvmrc=1
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#alias rrbx="rvm use \$(rvm list strings | grep -i rbx     | tail -1)"
#alias rmac="rvm use \$(rvm list strings | grep -i macruby | tail -1)"
#alias rjav="rvm use \$(rvm list strings | grep -i jruby   | tail -1)"
#alias r186="rvm use \$(rvm list strings | grep -i 1.8.6   | tail -1)"
#alias r187="rvm use \$(rvm list strings | grep -i 1.8.7   | tail -1)"
#alias r191="rvm use \$(rvm list strings | grep -i 1.9.1   | tail -1)"
#alias r192="rvm use \$(rvm list strings | grep -i 1.9.2   | tail -1)"
#alias r193="rvm use \$(rvm list strings | grep -i 1.9.3   | tail -1)"

# rbenv
eval "$(rbenv init -)"
