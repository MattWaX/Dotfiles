-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- remove tab bar, I don't need the multiplexing stuff I alredy have zellij
config.enable_tab_bar = false
-- hyprland currently giving problems (now that I switched to the git package all seems fine)
config.enable_wayland = true

config.front_end = "WebGpu"

config.scrollback_lines = 2000

-- change color_scheme
config.color_scheme = "Hacktober"
config.colors = {
	background = "#000000",
}

-- change font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 13.0

-- remove padding
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- reset keybinding and set copy and paste binds
config.disable_default_key_bindings = true
config.keys = {
	{
		key = "c",
		mods = "SHIFT|CTRL",
		action = wezterm.action.CopyTo("Clipboard"),
	},
	{
		key = "v",
		mods = "SHIFT|CTRL",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{
		key = "x",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ActivateCopyMode,
	},
	{
		key = "=",
		mods = "CTRL",
		action = wezterm.action.IncreaseFontSize,
	},
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.DecreaseFontSize,
	},
	{
		key = "P",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ActivateCommandPalette,
	},
	-- Use one of these
	{ key = "Backspace", mods = "CTRL", action = wezterm.action.SendKey({ key = "Backspace", mods = "ALT" }) },
	-- most Linux shells use Alt + backspace instead for word backspace
	{ key = "Backspace", mods = "CTRL", action = wezterm.action.SendKey({ key = "w", mods = "CTRL" }) },
	-- most Linux shells use Ctrl + w instead for word delete
}

-- copy mode keybindings
local copy_mode = nil
if wezterm.gui then
	copy_mode = wezterm.gui.default_key_tables().copy_mode
	table.insert(copy_mode, {
		key = "y",
		mods = "NONE",
		action = wezterm.action.Multiple({ { CopyTo = "Clipboard" }, { CopyMode = "Close" } }),
	})
end

key_tables = {
	copy_mode = copy_mode,
}

-- and finally, return the configuration to wezterm
return config
