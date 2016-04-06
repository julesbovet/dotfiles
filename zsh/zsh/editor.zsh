if which gvim >& /dev/null; then
  export EDITOR='gvim'
elif which vim >& /dev/null; then
  export EDITOR='vim'
elif which vi >& /dev/null; then
  export EDITOR='vi'
else
  export EDITOR='emacs' # lol fail...
fi

