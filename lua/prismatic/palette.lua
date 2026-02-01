-- Prismatic color palette

local M = {}

M.colors = {
	-- Backgrounds
	bg = "#0d0d0d",
	bg_alt = "#1a1a1a",
	bg_highlight = "#262626",
	bg_visual = "#393939",
	bg_float = "#080808",

	-- Foregrounds
	fg = "#dde1e6",
	fg_bright = "#f2f4f8",
	fg_muted = "#7a7a7a",
	fg_dark = "#525252",

	-- The prism colors
	red = "#ee5396",
	green = "#50fa7b",
	yellow = "#fac863",
	blue = "#78a9ff",
	magenta = "#ff7eb6",
	cyan = "#3ddbd9",
	teal = "#08bdba",
	purple = "#be95ff",
	orange = "#ff9e64",
	pink = "#ff7eb6",
	sky = "#82cfff",
	light_blue = "#33b1ff",

	-- Semantic colors
	error = "#ee5396",
	warning = "#ff9e64",
	info = "#78a9ff",
	hint = "#3ddbd9",
	success = "#42be65",

	-- Git colors
	git_add = "#42be65",
	git_change = "#78a9ff",
	git_delete = "#ee5396",

	-- Diff colors
	diff_add_bg = "#0a2a2a",
	diff_change_bg = "#1a2a3a",
	diff_delete_bg = "#2a1420",
	diff_text_bg = "#2f3f5c",

	-- Special
	none = "NONE",
}

-- Terminal colors (ANSI 0-15)
M.terminal = {
	M.colors.bg_alt, -- 0: black
	M.colors.red, -- 1: red
	M.colors.green, -- 2: green
	M.colors.yellow, -- 3: yellow
	M.colors.blue, -- 4: blue
	M.colors.magenta, -- 5: magenta
	M.colors.cyan, -- 6: cyan
	M.colors.fg, -- 7: white
	M.colors.fg_muted, -- 8: bright black
	M.colors.red, -- 9: bright red
	M.colors.green, -- 10: bright green
	M.colors.yellow, -- 11: bright yellow
	M.colors.blue, -- 12: bright blue
	M.colors.magenta, -- 13: bright magenta
	M.colors.teal, -- 14: bright cyan
	M.colors.fg_bright, -- 15: bright white
}

return M
