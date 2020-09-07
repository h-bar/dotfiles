# ################################
# Fonts
# ################################
mkdir -p $HOME/.fonts
for font in $PWD/fonts/*; do
    if [ -e $HOME/.fonts/$(basename $font) ]; then
        echo "Font $(basename $font) already exists. Skipping..."
    else
        ln -sv $font $HOME/.fonts/$(basename $font)
    fi
done
fc-cache -rvf $HOME/.fonts

# ###############################
# Configs
# ###############################
mkdir -p $HOME/.config
for config in $PWD/config/*; do
    if [ -e $HOME/.config/$(basename $config) ]; then
        echo "Config $(basename $config) already exists. Skipping..."
    else
        ln -sv $config $HOME/.config/$(basename $config)
    fi
done


# ##############################
# Xresources
# #############################
cpp ./xresources/main -o $HOME/.Xdefaults
cpp ./xresources/main -o $HOME/.Xresources
xrdb $HOME/.Xresources
