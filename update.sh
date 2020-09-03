mkdir -p $HOME/.fonts
cp -r ./fonts/* $HOME/.fonts
fc-cache -rvf $HOME/.fonts

cpp ./xresources/main -o $HOME/.Xdefaults
cpp ./xresources/main -o $HOME/.Xresources
xrdb $HOME/.Xresources

mkdir -p $HOME/.config
cp -r ./config/* $HOME/.config

cp ./config/tmux/tmux.conf $HOME/.tmux.conf

