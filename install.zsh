#!zsh

printf '\nexport PATH="%s:$PATH"\n' `realpath ./bin` >> $HOME/.zshrc