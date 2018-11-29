local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")

local os = os

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/dremora"
theme.wallpaper                                 = os.getenv("HOME") .. "/.config/wall.png"
theme.font                                      = "Roboto Medium 9"
theme.taglist_font                              = "Roboto Bold 9"
theme.iconFont      							= "Font Awesome 5 Free Regular 9"
theme.fg_normal                                 = "#bbb"
theme.fg_focus                                  = "#DDDCFF"
theme.bg_normal                                 = "#2F343F"
theme.bg_focus                                  = "#2F343F"
theme.fg_urgent                                 = "#CC9393"
theme.bg_urgent                                 = "#2A1F1E"
theme.border_width                              = "1"
theme.border_normal                             = "#121212"
theme.border_focus                              = "#8e1eff"
theme.titlebar_bg_focus                         = "#292929"
theme.taglist_fg_focus                          = "#dddcff"
theme.taglist_fg_normal                         = "#dddcff"
theme.taglist_bg_focus                          = "#444"
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .."/icons/awesome.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.tasklist_align							= "center"
theme.useless_gap                               = 5
theme.systray_icon_spacing					    = 1.5
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"


local markup     = lain.util.markup
local separators = lain.util.separators
local white      = theme.fg_focus
local gray       = "#858585"

-- Textclock
local cal_icon = "  <span font=\"".. theme.iconFont .."\"></span> "
local mytextclock = wibox.widget.textclock(markup(white, cal_icon) .. markup(white, " %d ")
.. markup(gray, "%b ") .. markup(white, "%Y ") .. markup(gray, " %a ") .. markup(white, "%H:%M %p "))
mytextclock.font = theme.font

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { mytextclock },
    notification_preset = {
        font = "Misc Tamsyn 11",
        fg   = white,
        bg   = theme.bg_normal
}})
mytextclock:disconnect_signal("mouse::enter", theme.cal.hover_on)

-- MPD
theme.mpd = lain.widget.mpd({
    settings = function()
        mpd_notification_preset.fg = white
        artist = " " .. mpd_now.artist .. " "
        title  = " " .. mpd_now.title  .. " "

        if mpd_now.state == "pause" then
            artist = "mpd "
            title  = "paused "
        elseif mpd_now.state == "stop" then
            artist = ""
            title  = ""
        end

        widget:set_markup(markup.font(theme.font, markup(gray, artist) .. markup(white, title)))
    end
})

-- CPU
theme.cpu = lain.widget.cpu({
	settings = function()
		local cpu_icon = "    <span font=\"".. theme.iconFont .."\"></span> "
		widget:set_markup(markup.font(theme.font, markup(white, cpu_icon) .. markup(white, cpu_now.usage)))
	end
})

-- Temp
theme.temp = lain.widget.temp({
	tempfile = "/sys/devices/platform/coretemp.0/hwmon/hwmon2/temp1_input",
	settings = function()
		local temp_icon = "  <span font=\"".. theme.iconFont .."\"></span> "
		local cur_temp = coretemp_now .. "c "
		widget:set_markup(markup.font(theme.font, markup(temp_col, temp_icon) .. markup(temp_col, cur_temp)))
	end
})

-- Battery
theme.bat = lain.widget.bat({
	notify = "off",
	timeout = 10,
    settings = function()
		icon_color = white
		if (bat_now.perc == 100) then
			bat_icon = ""
		elseif (bat_now.perc >= 60 and bat_now.perc < 100) then
			bat_icon = ""
		elseif (bat_now.perc >= 20 and bat_now.perc < 60) then
			bat_icon = ""
		elseif (bat_now.perc > 20) then
			bat_icon = ""
			icon_color = "#ff1e8e"
		end
        bat_header = "  <span font=\"".. theme.iconFont .."\">" .. bat_icon .. "</span> "
		if (bat_now.status == "Charging" or bat_now.status == "Full") then
			bat_color = "#1e8eff"
		elseif (bat_now.status == "Discharging" and bat_now.perc <= 15) then
			bat_color = "#ff1e8e"
		else
			bat_color = white
		end
        bat_p      = bat_now.perc .. "% "
		if is_laptop then
	        widget:set_markup(markup.font(theme.font, markup(icon_color, bat_header) .. markup(bat_color, bat_p)))
		end
    end
})

theme.systray = wibox.widget.systray()

-- Volume
theme.volume = lain.widget.pulse {
    settings = function()
		cur_vol = tonumber(volume_now.left)
		vol_color = white
		if (cur_vol > 80 and volume_now.muted == "no") then
			vol_icon = ""
		elseif (cur_vol > 50 and volume_now.muted == "no") then
			vol_icon = ""
		elseif (cur_vol > 20 and volume_now.muted == "no") then
			vol_icon = ""
		else
			vol_icon = ""
			vol_color = "#ff1e8e"
		end
		vheader = "  <span font=\"".. theme.iconFont .."\">" .. vol_icon .. "</span> "
        vlevel = volume_now.left ..  "% "
        if volume_now.muted == "yes" then
            vlevel = "M "
        end
        widget:set_markup(markup.font(theme.font, markup(vol_color, vheader) .. markup(vol_color, vlevel)))
	end
}
theme.volume.widget:buttons(awful.util.table.join(
    awful.button({}, 1, function() -- left click
        awful.spawn("pavucontrol")
    end),
    awful.button({}, 2, function() -- middle click
        os.execute(string.format("pactl set-sink-volume %d 100%%", theme.volume.device))
        theme.volume.update()
    end),
    awful.button({}, 3, function() -- right click
        os.execute(string.format("pactl set-sink-mute %d toggle", theme.volume.device))
        theme.volume.update()
    end),
    awful.button({}, 4, function() -- scroll up
        os.execute(string.format("pactl set-sink-volume %d +1%%", theme.volume.device))
        theme.volume.update()
    end),
    awful.button({}, 5, function() -- scroll down
        os.execute(string.format("pactl set-sink-volume %d -1%%", theme.volume.device))
        theme.volume.update()
    end)
))

-- Weather
theme.weather = lain.widget.weather({
    city_id = 2643743, -- placeholder (London)
    notification_preset = { fg = white }
})

-- Separators
local first     = wibox.widget.textbox('<span font="Misc Tamsyn 4"> </span>')
local arrl_pre  = separators.arrow_right("alpha", "#1A1A1A")
local arrl_post = separators.arrow_right("#1A1A1A", "alpha")

function theme.at_screen_connect(s)

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    --awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])
	for _, i in pairs(awful.util.tagnames[s.index]) do
		awful.tag.add(i.name, {
			layout = i.lay or awful.layout.layouts[1],
			gap = i.gap or theme.useless_gap,
			screen = s,
			selected = i.sel or false,
			master_width_factor = i.mw or 0.5,
		})
	end

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(gears.table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.focused, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 18, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mylayoutbox,
            first,
            s.mytaglist,
            s.mypromptbox,
            first,
            theme.mpd.widget,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            theme.systray,
            first,
			theme.cpu.widget,
			theme.bat,
            theme.volume.widget,
            mytextclock,
        },
    }
end

return theme
