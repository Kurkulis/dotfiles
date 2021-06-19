from typing import List  # noqa: F401

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = "kitty"

keys = [
    # Switch between windows
    Key([mod, "control"], "Left", lazy.layout.left(), desc="Move focus to left"),
    Key([mod, "control"], "Right", lazy.layout.right(), desc="Move focus to right"),
    Key([mod, "control"], "Down", lazy.layout.down(), desc="Move focus down"),
    Key([mod, "control"], "Up", lazy.layout.up(), desc="Move focus up"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "mod1"], "Left", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "mod1"], "Right", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "mod1"], "Down", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "mod1"], "Up", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "shift"], "Left", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "shift"], "Right", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "shift"], "Down", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "shift"], "Up", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "space", lazy.spawn('rofi -show drun'),
        desc="Spawn a command using a prompt widget"),
    
    Key([], "XF86AudioRaiseVolume", lazy.spawn('pactl set-sink-volume @DEFAULT_SINK@ +5%'),
        desc="Volume up"),
    Key([], "XF86AudioLowerVolume", lazy.spawn('pactl set-sink-volume @DEFAULT_SINK@ -5%'),
        desc="Volume down"),
    Key([], "XF86AudioMute", lazy.spawn('pactl set-sink-mute @DEFAULT_SINK@ toggle'),
        desc="Mute volume"),
    
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
        #     desc="move focused window to group {}".format(i.name)),
    ])

layouts = [
    layout.Columns(
        border_focus='#4f483e',
        border_normal='#0e141b',
        num_columns = 3,
        insert_poistion = 1
        ),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font='JetBrains Mono Bold',
    fontsize=12,
    padding=3,
    foreground='#b2b2b2'
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    active='#b2b2b2',
                    block_highlight_text_color='#b2b2b2',
                    inactive='#4f483e',
                    urgent_border='#ac4142',
                    urgent_alert_method='block',
                    rounded=False,
                    this_current_screen_border='#f4bf75',
                    highlight_method='text',
                    ),
                widget.Spacer(),
                widget.Clock(format='%A - %d-%m-%Y - %H:%M'),
                widget.Spacer(),
                widget.PulseVolume(),
                widget.Systray(),
                widget.CurrentLayoutIcon(scale=0.7),
            ],
            20,
            background='#0e141b',
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
    Match(title='pcmanfm'), # Files app
])
auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"