TRASH=$HOME/.trash

typeset -A trashfiles
trashentries=()
trashcompletions=()

# If the trash does not exist, create it
if [ ! -e $TRASH ]; then
  mkdir $TRASH
fi

# Overrides rm default behavior by creating a trash directory
function rm()
{
  for file in $@; do
    if [ -e $file ]; then
      # build destination name
      src=$file
      dest=`basename $file`-`date +%Y-%m-%d_%Hh%m`.trash
      
      # move file to trash
      command mv $src $TRASH/$dest
      echo "$src -> $TRASH/$dest"
      
      # Store informations for restoration
      trashentries+=($dest)
      trashfiles[$dest]=`pwd`/$src
      trashcompletions+=($dest:$trashfiles[$dest])
    fi
  done
}

# display trash content
function st()
{
  for file in $trashentries; do
    echo "$file\t$trashfiles[$file]"
  done
}

# empty trash
function et()
{
  command rm -rf $TRASH
  
  for entry in $trashentries; do
    unset $trashfiles[$entry]
  done
  
  trashentries=()
  trashcompletions=()

  command mkdir $TRASH
}

