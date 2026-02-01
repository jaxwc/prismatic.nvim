local M = {}

M.config = {
	transparent = false,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = false },
		functions = { bold = false },
		strings = {},
		variables = {},
	},
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "prismatic"
	vim.o.termguicolors = true
	vim.o.background = "dark"

	local palette = require("prismatic.palette")
	local highlights = require("prismatic.highlights")
	local plugins = require("prismatic.plugins")

	local colors = palette.colors

	local hl_groups = highlights.setup(colors, M.config)
	for group, opts in pairs(hl_groups) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	local plugin_groups = plugins.setup(colors)
	for group, opts in pairs(plugin_groups) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	if M.config.transparent then
		vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.fg, bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg_bright, bg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.fg_muted, bg = "NONE" })
		vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.fg_muted, bg = "NONE" })
	end

	if M.config.terminal_colors then
		for i, color in ipairs(palette.terminal) do
			vim.g["terminal_color_" .. (i - 1)] = color
		end
	end
end

function M.colorscheme()
	M.load()
end

return M
