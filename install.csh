#!tcsh

printf '\nsetenv PATH "%s:$PATH"\n' `realpath ./bin` >> $HOME/user.cshrc