if ! [[ -d $ZSH_CONF_CACHE ]]; then
    mkdir -p $ZSH_CONF_CACHE
fi

# Can iterate over words in a string with a for loop
setopt shwordsplit
