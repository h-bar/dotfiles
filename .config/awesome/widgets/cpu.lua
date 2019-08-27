local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")

local cpu_perc = wibox.widget{
  markup = "00%",
  widget = wibox.widget.textbox
}

awesome.connect_signal("evil::cpu", function(value)
  cpu_perc.markup = string.format('%02d%%' ,value)
end)

return cpu_perc
