local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "JetBrains Mono Bold 10"

theme.bg_normal     = "#111112"
theme.bg_focus      = "#111112"
theme.bg_urgent     = "#ac4142"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#ebdbb2"
theme.fg_focus      = "#bf832c"
theme.fg_urgent     = "#ac4142"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = 10
theme.border_width  = 0
theme.border_normal = "#111112"
theme.border_focus  = "#bf832c"
theme.border_marked = "#91231c"

theme.taglist_bg_focus = "transparent"
theme.taglist_fg_empty = "#444444"
theme.taglist_bg_urgent = "transparent"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(250)

theme.notification_border_width     = 2
theme.notification_border_color     = theme.border_focus
theme.notification_icon_size        = 80
theme.notification_opacity          = 1
theme.notification_max_width        = 600
theme.notification_max_height       = 400
theme.notification_margin           = 20

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."default/titlebar/maximized_focus_active.png"

theme.wallpaper = "~/Pictures/wallpapers/anime-girl-lonely-night.jpg"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

theme.layout_fairh       = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv       = themes_path.."default/layouts/fairvw.png"
theme.layout_floating    = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier   = themes_path.."default/layouts/magnifierw.png"
theme.layout_max         = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen  = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom  = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft    = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile        = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop     = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral      = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle     = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw    = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne    = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw    = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse    = themes_path.."default/layouts/cornersew.png"

theme.lain_icons         = "/usr/share/lua/5.3/lain/icons/layout/default/"
theme.layout_termfair    = theme.lain_icons .. "termfairw.png"
theme.layout_centerfair  = theme.lain_icons .. "centerfairw.png"  -- termfair.center
theme.layout_cascade     = theme.lain_icons .. "cascadew.png"
theme.layout_cascadetile = theme.lain_icons .. "cascadetilew.png" -- cascade.tile
theme.layout_centerwork  = theme.lain_icons .. "centerworkw.png"
theme.layout_centerworkh = theme.lain_icons .. "centerworkhw.png" -- centerwork.horizontal

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
