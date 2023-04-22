#basic
alias ll 'ls -la'

# cd alias
alias desktop 'cd ~/Desktop'
alias download 'cd ~/Downloads'
alias work='cd ~/work && ls'

#git
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gcm='git commit -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git log --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'
alias gp='git push'
alias gs='git status'

#use alternative commands
alias date='gdate'
alias grep='ggrep'

#self scripted
alias propen='gh pr view -w'

#shortcut
alias q='exit'
alias gget='ghq get -l'

#zgok
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