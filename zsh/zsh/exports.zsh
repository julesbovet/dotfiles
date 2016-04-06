umask 002

export BLOCK_SIZE=human-readable
export PSEUDO="zeym"
export RAILS_ENV="development"

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/conf/scripts:/usr/sbin:$HOME/bin:/usr/local/lib

export LOGIN='bovet_j'
export EMAIL='jules.bovet@gmail.com'

# Go
export GOROOT=$HOME/projects/clone/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=$HOME/projects/self./go

# Maven
#export MAVEN_OPTS="-DsocksProxyHost=127.0.0.1 -DsocksProxyPort=9090"

# John the ripper
export JOHN=/home/zeym/pentest/bruteforce/john/run

# Linuxbrew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

if [ -e $HOME/.rvm ]; then
  export PATH=$PATH:$HOME/.rvm/bin
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi
if [ -e /etc/profile.d/rvm.sh ]; then
  source /etc/profile.d/rvm.sh
fi
