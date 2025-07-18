alias cgrep="grep --color=always"
alias dog="pygmentize -P style=solarized-dark -g"

alias gitschg="git status -s | grep -v '??'"
alias gitshere="git status -s | grep -v '\.\.'"
alias gstat="git status"
alias ga="git add"
alias gd="git diff"

alias ff='function _ff(){ find . -name "*$1*";};_ff'

alias k="kubectl"
alias h="helm"
alias kswitchcontext="kubectl config use-context"
alias kfnolana="kubectl --context=folio -n folio-nolana"
alias hfnolana="helm --kube-context=folio -n folio-nolana"
alias kext="kubectl --context=searchkube -n folio-ext"
alias hext="helm --kube-context=searchkube -n folio-ext"
alias hftest01='helm --kube-context=folio -n folio-test-01'
alias kftest01='kubectl --context=folio -n folio-test-01'
