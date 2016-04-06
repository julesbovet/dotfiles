pushd $0:h >&-

source ./alias.zsh
source ./clean.zsh
source ./colors.zsh
source ./completion.zsh
source ./editor.zsh
source ./exports.zsh
source ./history.zsh
source ./ls.zsh
source ./opt.zsh
source ./overwrite.zsh
source ./functions.zsh
source ./prompt.zsh
source ./rm.zsh

source ./postconf.zsh

popd >&-

source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
