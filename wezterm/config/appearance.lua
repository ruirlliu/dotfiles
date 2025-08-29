local wezterm = require("wezterm")

-- local font = "JetBrainsMono Nerd Font"
local font = "JetBrains Mono"
local font_size = 13.5



function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha"
  else
    -- return "Catppuccin Latte"
    -- return "Papercolor Light (Gogh)"
    return "Google Light (Gogh)"
  end
end


return {
	-- font
	font = wezterm.font(font),
	font_size = font_size,
	--ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
	freetype_load_target = "Normal", ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
	freetype_render_target = "Normal", ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'

	-- scrollbar
	enable_scroll_bar = true,

	-- tab bar
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = true,
	-- tab_max_width = 25,
	show_tab_index_in_tab_bar = false,
	switch_to_last_active_tab_when_closing_tab = true,
	
	-- theme
  	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
	
	-- mouse
	default_cursor_style = 'BlinkingBlock'
}

