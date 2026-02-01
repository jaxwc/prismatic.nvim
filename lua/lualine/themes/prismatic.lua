-- Prismatic theme for lualine

local colors = {
	bg = "#0d0d0d",
	bg_alt = "#1a1a1a",
	bg_highlight = "#262626",
	bg_visual = "#393939",
	fg = "#dde1e6",
	fg_bright = "#f2f4f8",
	fg_muted = "#7a7a7a",
	red = "#ee5396",
	green = "#50fa7b",
	yellow = "#fac863",
	blue = "#78a9ff",
	magenta = "#ff7eb6",
	cyan = "#3ddbd9",
	teal = "#08bdba",
	purple = "#be95ff",
	orange = "#ff9e64",
}

return {
	normal = {
		a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_visual },
		c = { fg = colors.fg, bg = colors.bg_alt },
	},
	insert = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_visual },
		c = { fg = colors.fg, bg = colors.bg_alt },
	},
	visual = {
		a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_visual },
		c = { fg = colors.fg, bg = colors.bg_alt },
	},
	replace = {
		a = { fg = colors.bg, bg = colors.red, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_visual },
		c = { fg = colors.fg, bg = colors.bg_alt },
	},
	command = {
		a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_visual },
		c = { fg = colors.fg, bg = colors.bg_alt },
	},
	terminal = {
		a = { fg = colors.bg, bg = colors.cyan, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg_visual },
		c = { fg = colors.fg, bg = colors.bg_alt },
	},
	inactive = {
		a = { fg = colors.fg_muted, bg = colors.bg_alt },
		b = { fg = colors.fg_muted, bg = colors.bg_alt },
		c = { fg = colors.fg_muted, bg = colors.bg_alt },
	},
}
