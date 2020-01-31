sudo apt update



sudo apt install -y --no-install-recommends zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt install -y --no-install-recommends fonts-roboto fonts-noto-cjk fonts-noto-cjk-extra fonts-noto-color-emoji fonts-powerline fonts-font-awesome

sudo apt install -y --no-install-recommends ranger vim

sudo apt install -y --no-install-recommends pkg-config libx11-dev libglib2.0-dev libxcomposite-dev
mkdir -p ~/src
git clone https://github.com/herbstluftwm/herbstluftwm ~/src/herbstluftwm
(cd ~/src/herbstluftwm && make all-nodoc) # build the binaries
# install files
mkdir -p ~/bin
# you also have to put $HOME/bin to your path, e.g. by:
ln -sf ~/src/herbstluftwm/herbstluftwm ~/bin/
ln -sf ~/src/herbstluftwm/herbstclient ~/bin/

sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install -y --no-install-recommends alacritty xclip

sudo apt install  -y --no-install-recommends compton feh mpd mpc mopidy rofi upower acpid pulseaudio libpulse0 pulsemixer nitrogen ncmpcpp pcmanfm

# sudo apt install -y --no-install-recommends fcitx fcitx-googlepinyin

./update.sh