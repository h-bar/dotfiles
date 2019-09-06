# Köfteist Köfte's dotfiles

## Personal Setup
The setup I use in my desktop and laptop:
* **Distrio**: [Arch Linux](https://www.archlinux.org/)
* **Window Manager**: [AwesomeWM](https://awesomewm.org/)
* **Terminal**: rxvt-unicode / urxvt
* **Shell**: ZSH with [Oh My Zsh](https://ohmyz.sh/)
* **Editor**: nvim
* **Color Scheme**: Monokai
* **Music Player**: Mopidy and ncmpcpp
* **Browser**: Firefox
* **File Browser**: Ranger (term), Pcmanfm (GUI)
* **Input Method**: Fcitx

Startup applications are controlled by `.xinitrc`. If you use any other way, you have to mofidy the configs.


## Awesome Dependencies
| Dependency | Description | Where I Use It |
| --- | --- | --- |
| `rofi` | Window switcher, application launcher and dmenu replacement | That and for running scripts |
| `Hack Nerd Font Mono` | A typeface designed for source code. Patched with Nerd Fonts iconics. | Terminal font |
| `Roboto` | Google's signature family of fonts | Font for Awesome, but I'm open to recomandations |
| `Font Awesome 5 Free` | Iconic font designed for Bootstrap | For widget icons in Awesome (and name consistancy) |
| `light` | Gets/Sets screen brightness | Brightness keybinds |
| `upower` | Abstraction for enumerating power devices, listening to device events and more | Battery widget |
| `acpid` | Daemon for delivering ACPI events | Battery widget |
| `pulseaudio`, `libpulse` | Sound system **(Installed by default on most distros)** | Volume widgets and keybinds |
| `pulsemixer` | CLI and curses mixer for pulseaudio | Volume widget |
| `mpd` or `mopidy` | Server-side application for playing music | Music widget |
| `mpc` | Minimalist command line interface to MPD | Music widgets |
| `xfce4-screenshooter` | Takes screenshots | Screenshot keybinds |
| `nitrogen` | Background browser and setter for X windows | Wallpaper manager |
| `betterlockscreen` or `i3lock` | Improved screenlocker based upon XCB and PAM | For locking the screen |


## How to Install
To install everything as I'm using, install dependencies to your system. After follow those steps:
* Copy or link `.scripts` folder wherever you like, and add that path to your environment path.
* Copy or link folders inside `.config`.
* Create a copy of `variables.lua.template` as `variables.lua` inside `.config/awesome` and edit it to suit your setup. Note: I currently asign screens manually.
* Copy or link `.Xdefaults`, `.xinitrc`, to your home directory.
* open `nvim`. It will install `vim-plug` automatically, then run `:PlugInstall` inside nvim.
* After those, your setup should be ready. Please notify me if those are not complete.


## AwesomeWM Config

### File structure
* `rc.lua`: Main file. It contains wibar, and end point of most of the stuff.
* `variables.lua`: A file for variables that can change from computer to computer.
* `rules.lua`: Window managing rules.
* `keys.lua`: Keyboard actions and shortcuts.
* `evil`: A collection of small daemons originally written by [elenapan](https://github.com/elenapan) and modified by me.
* `widgets`: My widgets. most of them uses `widgets.build_widget` as a base.
* `theme/theme.lua`: Style configs.
* `utils`: currently contains 2 things I'm borrowed form [Lain](https://github.com/lcpz/lain) project.

### Basic Keyboard Shortcuts
* `Super + F1`: See all shortcuts
* `Super + Enter`: Spawn a terminal
* `Alt + Space`: Launch Rofi
* `Super + A`: Open dropdown terminal
* `Super + W`: Launch Firefox
* `Super + R`: Launch Ranger
* `Super + N`: Launch ncmpcpp
* `Super + Q`: Close focused client
* `Super + Arrow Keys`: Change focus by direction
* `Super + Shift + Arrow Keys`: Move clients by direction
* `Super + H-L`: Change focus by ID
* `Super + J-K`: Change tags
* `Super + Numbers`: Move to a tag
* `Super + Shift + Numbers`: Move focused client to a tag
* `Super + Shift + F2`: Restart Awesome
* `Super + X`: Lock screen
* `Super + Shift + x`: Shutdown
* `Super + Shift + Backspace`: Reboot

### How to Use build_widget
`widgets.build_widget` is a basic function that I use for creating widgets. Usage is simple, create a widget that contains information, like CPU usage. After that, chose an icon from your icon font of choice and chose a color for your widget.
Then build the widget with `build_widget:new(information_widget, widget_icon, widget_icon_color)`. If you add `true` at the end, widget would not have a seperator at the end.
Information widget will get updated, but if you want to update icon part, you need to use `build_widget:UpdateIcon(widget_icon, widget_icon_color)`.

## Scripts
* `startproject`: A script for managing and starting my projects. It needs a `.config/project_list` file.
* `setupmirrors`: A script that updates Arch mirrirs.
* `prompt`: Creates a confirmation dialog with rofi and executes the given command.
* `displayselect`: Selects displays
* `translate`: A script that i wrote for a friend of mine. Ended up using time to time. Uses Rofi as a Google translate frontend.

## To-do list
* [ ] Make keys.lua more readable.
* [ ] Create a companion script to add my projects into `project_list` file easily.
* [ ] Detect if system is a laptop or desktop automatically in AwesomeWM.
* [ ] Detect displays automatically and support more than 2 in the configs.

## Some Notes:
* If you find any bugs or recomandations, please feel free to contact me or open an [issue](https://gitlab.com/kofteistkofte/dotfiles/issues).
* Special thanks to [elenapan](https://github.com/elenapan) and their awesome AwesomeWM config for Evil and a lot of ideas for making my config a lot better, [Awesome Copycats](https://github.com/lcpz/awesome-copycats) team for creating a lot of good themplates that ends up becoming a starting point for my initial config and every person who helped to create [AwesomeWM](https://awesomewm.org/) and [It's documantation](https://awesomewm.org/apidoc/).

![Alt text](./screenshots/awesome1.png?raw=true "Awesome screenshot")
![Alt text](./screenshots/awesome2.png?raw=true "Awesome screenshot")
