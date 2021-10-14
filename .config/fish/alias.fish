#basic
# alias rm 'rmtrash'
alias ll 'ls -la'
alias .. 'cd ../'
alias ... 'cd ../../'

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

#extend commands
alias diff='colordiff'
alias date='gdate'
alias rm='rip'

#self scripted
alias propen='gh pr view -w'
alias cpdir='cp -rf'
alias work='cd ~/work && ls'

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
alias ssmzgokfzf='aws --profile zucks-zgok --region ap-northeast-1 ssm start-session --target (aws --profile zucks-zgok --region ap-northeast-1 ec2 describe-instances | jq -c '\''.Reservations[].Instances[] | select(.Tags[].Key == "Name") | {"Name": .Tags[].Value, "InstanceId": .InstanceId }'\'' | fzf | jq -r ".InstanceId")'

