# Köfteist Köfte's dotfiles

## for general.
You have to copy `.scripts/` directory to your home to both i3 and Awesome work. Everything else is optional.

### Dependencies for both
* pulsemixer
* light
* mpd
* compton
* xfce4-screenshooter
* Font Awesome 5 Free
* Hack Nerd Font Mono - [This](https://aur.archlinux.org/packages/nerd-fonts-complete/) or [this](https://aur.archlinux.org/packages/nerd-fonts-hack/)
* awesome-terminal-fonts
* Roboto fonts
* betterlockscreen or i3lock

## for Awesome
For AwesomeWM you have to go to `.config/awesome/` and make a copy of `variables.lua_template` as `variables.lua` and fill it with stuff you need, like your screen names, your startup programs, your prefered programs etc.. After that, you're good to go.

### Dependencies for Awesome
* awesome
* lain
* Rofi

![Alt text](./screenshots/awesome1.png?raw=true "Awesome screenshot")
![Alt text](./screenshots/awesome2.png?raw=true "Awesome screenshot")

## for i3
Thanks to i3 config files doesn't support multiple files, include, variable etc, I had to make this stupid way.
Basicly go to `.config/i3/` directory, copy both `config_header_dummy` and `config_footer_dummy` as `config_header` and `config_footer`, make your changes to those 2 files and run `config_build.sh` script. After that you need to copy `.config/polybar/` directory to your `.config/` directory too.
After that, you're good to go.

### Dependencies for i3
* i3-gaps
* polybar
* Sazanami Mincho font
* dunst

![Alt text](./screenshots/i31.png?raw=true "i3 screenshot")
![Alt text](./screenshots/i32.png?raw=true "i3 screenshot")
