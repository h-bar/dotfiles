#!tcsh -f

printf '\nexport PATH="%s:$PATH"\n' `realpath ./bin` >> $HOME/user.cshrc
./update.sh