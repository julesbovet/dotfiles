TRASHFILES='*~ #*~ *.sw[poa] *.*~'

function rclean()
{
  for expr in `echo $TRASHFILES`; do
    find . -name "$expr" -exec rm -rf {} \;
  done
}

