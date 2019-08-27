local awful = require("awful")
local wibox = require("wibox")
local build_widget = require("widgets.build_widget")

local widgets = {}

-- From Files
widgets.cpu = require('widgets.cpu')
widgets.mem = require('widgets.mem')
widgets.temp = require('widgets.temp')
widgets.disk = require('widgets.disk')
widgets.vol = require('widgets.vol')
widgets.bat = require('widgets.bat')

-- Separators
widgets.space = wibox.widget.textbox('<span>  </span>')
widgets.seperator = wibox.widget.textbox(' <span color="grey">|</span>  ')

-- Textclock
local textclock_text =wibox.widget.textclock(" %d %b %a %I:%M %p")
widgets.textclock = build_widget:new(textclock_text, "", "#a753fc", true).widget

local month_calendar = awful.widget.calendar_popup.month()
month_calendar:attach( widgets.textclock, "tc" )

-- Keyboard Layout
local kblayout_text = awful.widget.keyboardlayout()
widgets.kblayout = build_widget:new(kblayout_text, " ", "darksalmon").widget

return widgets
