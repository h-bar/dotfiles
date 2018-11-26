# Köfteist Köfte's dotfiles

## for general.
You have to copy `.scripts/` directory to your home to both i3 and Awesome work. Everything else is optional.

## for Awesome
For AwesomeWM you have to go to `.config/awesome/` and make a copy of `variables.lua_template` as `variables.lua` and fill it with stuff you need, like your screen names, your startup programs, your prefered programs etc.. After that, you're good to go.

## for i3
Thanks to i3 config files doesn't support multiple files, include, variable etc, I had to make this stupid way.
Basicly go to `.config/i3/` directory, copy both `config_header_dummy` and `config_footer_dummy` as `config_header` and `config_footer`, make your changes to those 2 files and run `config_build.sh` script.
After that, you're good to go.
