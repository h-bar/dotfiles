local awful = require("awful")
local lain = require("lain")
local markup = lain.util.markup
local wibox = require("wibox")
local beautiful = require("beautiful")
local build_widget = require("widgets.build_widget")

local widgets = {}
-- From Files
widgets.cpu = require('widgets.cpu')
widgets.mem = require('widgets.mem')
widgets.temp = require('widgets.temp')
widgets.disk = require('widgets.disk')
widgets.vol = require('widgets.vol')
widgets.bat = require('widgets.bat')


-- Textclock
local textclock_text =wibox.widget.textclock(" %d %b %a %I:%M %p")
widgets.textclock = build_widget:new(textclock_text, "", "#a753fc", true).widget

-- Keyboard Layout
local kblayout_text = awful.widget.keyboardlayout()
widgets.kblayout = build_widget:new(kblayout_text, "", "darksalmon").widget


return widgets
