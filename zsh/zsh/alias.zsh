alias cd..="cd .."
alias cd-="cd -"

alias sshlolo='ssh -D 9090 jules@129.184.88.99 -p 9101'
alias sshflutenor='ssh jules@129.182.245.27 -p 9101'
alias sshpaillette='ssh jules@129.182.247.147 -p 9101'

alias tunnelp='ssh -p 1337 -i ~/.ssh/zeym -f -N -D 8889 -oProxyCommand="ssh -W %h:%p -p 9101 jules@129.184.88.99" zeym@94.23.13.171'

alias pdf='google-chrome'

alias open='xdg-open'

alias pc='proxychains'
alias pcq='pc'
alias sudop='sudo proxychains'
alias pctor='proxychains -f /etc/proxychains-tor.conf'
