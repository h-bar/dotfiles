local gears = require("gears")
local lain = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local vicious = require("vicious")

local os = os

local markup = lain.util.markup

local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local white = "#ddd"
local gray = "#858585"

local theme = {}
theme.dir = os.getenv("HOME") .. "/.config/awesome/theme"
theme.font = "Roboto Medium 9"
theme.taglist_font = "Roboto Bold 9"
theme.iconFont = "Font Awesome 5 Free Regular 9"
theme.fg_normal = white
theme.fg_focus = white
theme.bg_normal = "#2F343F"
theme.bg_focus = "#2F343F"
theme.fg_urgent = "#CC9393"
theme.bg_urgent = "#2A1F1E"
theme.border_width = "1"
theme.border_normal = "#121212"
theme.border_focus = "#8e1eff"
theme.titlebar_bg_focus = "#292929"
theme.taglist_fg_focus = theme.bg_normal
theme.taglist_fg_empty = "#bbb"
theme.taglist_fg_occupied = "#bbb"
theme.taglist_fg_normal = gray
theme.taglist_bg_occupied = "#4a4a4a"
theme.taglist_bg_focus = "#b9b9b9"
theme.menu_submenu_icon = theme.dir .. "/icons/submenu.png"
theme.awesome_icon = theme.dir .."/icons/awesome.png"
theme.layout_tile = theme.dir .. "/icons/tile.png"
theme.layout_tileleft = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv = theme.dir .. "/icons/fairv.png"
theme.layout_fairh = theme.dir .. "/icons/fairh.png"
theme.layout_spiral = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle = theme.dir .. "/icons/dwindle.png"
theme.layout_fullscreen = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier = theme.dir .. "/icons/magnifier.png"
theme.layout_floating = theme.dir .. "/icons/floating.png"
theme.layout_cornernw = theme.dir .. "/icons/cornernw.png"
theme.layout_centerwork = theme.dir .. "/icons/centerwork.png"
theme.useless_gap = 5
theme.maximized_hide_border = true
theme.pw_bg = "#231929"


-- MPD
theme.mpdwidget = wibox.widget.textbox()
vicious.register(
  theme.mpdwidget,
  vicious.widgets.mpd,
  function(widget, args)
    if args["{state}"] == "Stop" then
      return ""
    else
      return ('<span color="white">%s</span> - %s'):format(
      args["{Artist}"], args["{Title}"])
    end
end)

-- MPD Toggle
theme.mpd_toggle = wibox.widget.textbox()
vicious.register(
  theme.mpd_toggle,
  vicious.widgets.mpd,
  function(widget, args)
    local label = {["Play"] = "", ["Pause"] = "", ["Stop"] = "" }
    return ("<span color=\"white\" font=\"".. theme.iconFont .."\">%s</span> "):format(label[args["{state}"]])
end)

theme.mpd_toggle:buttons(awful.util.table.join(
  awful.button({}, 1, function()
  os.execute("mpc toggle")
  vicious.force({theme.mpdwidget, theme.mpd_prev, theme.mpd_toggle, theme.mpd_next})
end),
awful.button({}, 3, function()
  os.execute("mpc stop")
  vicious.force({theme.mpdwidget, theme.mpd_prev, theme.mpd_toggle, theme.mpd_next})
end)
))

-- MPD Previous
theme.mpd_prev = wibox.widget.textbox()
vicious.register(
  theme.mpd_prev,
  vicious.widgets.mpd,
  function(widget, args)
    if args["{state}"] == "Stop" then
      return ""
    else
      return ("<span color=\"white\" font=\"".. theme.iconFont .."\"></span> ")
    end
end)

theme.mpd_prev:buttons(awful.util.table.join(
  awful.button({}, 1, function()
  os.execute("mpc prev")
  vicious.force({theme.mpdwidget, theme.mpd_prev, theme.mpd_toggle, theme.mpd_next})
end)
))

-- MPD Next
theme.mpd_next = wibox.widget.textbox()
vicious.register(
theme.mpd_next,
vicious.widgets.mpd,
function(widget, args)
  if args["{state}"] == "Stop" then
    return ""
  else
    return ("<span color=\"white\" font=\"".. theme.iconFont .."\"></span>")
  end
end)

theme.mpd_next:buttons(awful.util.table.join(
  awful.button({}, 1, function()
  os.execute("mpc next")
  vicious.force({theme.mpdwidget, theme.mpd_prev, theme.mpd_toggle, theme.mpd_next})
end)
))

return theme
