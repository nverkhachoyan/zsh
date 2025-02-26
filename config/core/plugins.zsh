for dir in functions plugins; do
    for file in "$ZSH_CONFIG/$dir"/*.zsh(N) "$ZSH_CONFIG/$dir"/*/*.plugin.zsh(N); do
        source "$file"
    done
done

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
