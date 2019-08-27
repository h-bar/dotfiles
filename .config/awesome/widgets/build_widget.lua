local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local build_widget = function (value_widget, icon, icon_color, last)
  local is_last = nil
  if last then
    is_last = wibox.widget.textbox(' ')
  end
  local pipe = is_last or wibox.widget.textbox('<span color="grey">|</span> ')

  value_widget.font = beautiful.font

  local widget_icon = wibox.widget{
    markup = '<span color="' .. icon_color .. '" font="' .. beautiful.iconFont .. '">' .. icon .. '</span>',
    align  = 'center',
    valign = 'center',
    widget = wibox.widget.textbox
  }

  local widget = wibox.widget{
    nil,
    {
      widget_icon,
      value_widget,
      pipe,
      spacing = dpi(2),
      layout = wibox.layout.fixed.horizontal
    },
    expand = "none",
    layout = wibox.layout.align.horizontal
  }
  
  return widget
end

return build_widget
