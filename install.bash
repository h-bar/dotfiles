#!bash

printf '\nexport PATH="%s:$PATH"\n' `realpath ./bin` >> $HOME/.bashrc