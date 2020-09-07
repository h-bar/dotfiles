zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

zinit load zdharma/history-search-multi-word

zinit snippet OMZ::plugins/git/git.plugin.zsh


zinit ice from="gh-r" as="program" bpick="*linux*musl*" pick="bat*/bat"
zinit light sharkdp/bat

zinit ice from="gh-r" as="program" bpick="*linux*musl*" pick="ripgrep*/rg"
zinit light BurntSushi/ripgrep

zinit ice from="gh-r" as="program" bpick="*linux*musl*" pick="fd*/fd"
zinit light sharkdp/fd

zinit ice from="gh-r" as="program" bpick="*linux*amd64*"
zinit light junegunn/fzf-bin
