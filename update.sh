mkdir -p $HOME/.fonts
cp -r ./fonts/* $HOME/.fonts
fc-cache -rvf $HOME/.fonts

cpp ./xresources.d/main -o $HOME/.Xdefaults
cpp ./xresources.d/main -o $HOME/.Xresources
xrdb $HOME/.Xresources