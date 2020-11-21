#!/bin/bash

# git
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gb='git branch $(git branch | peco | sed -e "s/\*//g")'
alias gc='git checkout $(git branch | peco | sed -e "s/\*//g")'

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
