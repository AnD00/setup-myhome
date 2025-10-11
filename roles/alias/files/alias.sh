#!/bin/bash

# git
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gb='git branch $(git branch | peco | sed -e "s/\*//g")'
alias gc='git checkout $(git branch | peco | sed -e "s/\*//g")'
alias grbi='git rebase -i $(git merge-base origin/$(git rev-parse --abbrev-ref HEAD) HEAD)'

# aws
alias awsp='source $(ghq root)/github.com/itouuuuuuuuu/awsp/run.sh'

# k8s
alias k='kubectl'
alias ka='kubectl apply'
alias kc='kubectl config'
alias kd='kubectl describe'
alias ke='kubectl exec'
alias kg='kubectl get'
alias kl='kubectl logs'
source <(kubectl completion zsh)

# kubectx
alias kctx='kubectx'
alias kns='kubens'

# ruby
alias be='bundle exec'

# vscode
alias vc='code $(ghq root)/$(ghq list | peco)'
