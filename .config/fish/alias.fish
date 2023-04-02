#basic
# alias rm 'rmtrash'
alias ll 'ls -la'

# cd alias
alias desktop 'cd ~/Desktop'
alias download 'cd ~/Downloads'
alias work='cd ~/work && ls'

#git
alias g='git'
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gbm='git branch -m'
alias gbd='git branch -D'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gg 'git grep'
alias ggi 'git grep -i'
alias ggiv 'git grep -i -v'
alias gi='git init'
alias gl='git log --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'
alias glo='git log --oneline'
alias glg='git log --graph --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'
alias gm='git merge'
alias gp='git push'
alias gpo='git push origin'
alias gp='git push origin HEAD'
alias gr='git reset'
alias grb='git rebase'
alias grv='git revert'
alias gs='git status'
alias gsh='git show'

#use alternative commands
alias diff='colordiff'
alias date='gdate'
alias rm='rip'

#self scripted
alias propen='gh pr view -w'
alias cpdir='cp -rf'

#shortcut
alias q='exit'
alias t='tmux'
alias ts='tmux-session-fzf'
alias giv='grep -i -v'
alias gi='grep -i'
alias v='vim .'
alias d='docker'
alias dc='docker-compose'
alias gget='ghq get -l'

#zgok
alias killsh='ps a | grep zgok-sh | grep -v color | awk "{print $1}" | xargs kill -9'
# alias ssmzgokfzf='aws --profile zucks-zgok --region ap-northeast-1 ssm start-session --target (aws --profile zucks-zgok --region ap-northeast-1 ec2 describe-instances | jq -c '\''.Reservations[].Instances[]  | select(.State.Code == 16) | select(.Tags[].Key == "Name") | {"Name": .Tags[].Value, "InstanceId": .InstanceId }'\'' | fzf | jq -r ".InstanceId")'
function ssmzgokfzf
  set -l target (aws --profile zucks-zgok --region ap-northeast-1 ec2 describe-instances --filter 'Name=instance-state-name,Values=running' --query 'Reservations[].Instances[].{Name:Tags[?Key==`Name`] | [0].Value,InstanceId: InstanceId}' --output json | jq -c .[] | sort | fzf --exit-0 | jq -r .InstanceId)
  if test -n "$target"
    aws --profile zucks-zgok --region ap-northeast-1 ssm start-session --target $target
  end
end
function ssmadnetfzf
  set -l target (aws --profile zgok-adnet --region ap-northeast-1 ec2 describe-instances --filter 'Name=instance-state-name,Values=running' --query 'Reservations[].Instances[].{Name:Tags[?Key==`Name`] | [0].Value,InstanceId: InstanceId}' --output json | jq -c .[] | sort | fzf --exit-0 | jq -r .InstanceId)
  if test -n "$target"
    aws --profile zgok-adnet --region ap-northeast-1 ssm start-session --target $target
  end
end
alias ssmsazabifzf='aws --profile zucks-sazabi --region ap-northeast-1 ssm start-session --target (aws --profile zucks-sazabi --region ap-northeast-1 ec2 describe-instances | jq -c '\''.Reservations[].Instances[] | select(.Tags[].Key == "Name") | {"Name": .Tags[].Value, "InstanceId": .InstanceId }'\'' | fzf | jq -r ".InstanceId")'



alias phpstorm='open -na "PhpStorm.app"'
