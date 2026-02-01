-- Prismatic highlight groups
local M = {}

function M.setup(colors, config)
	local c = colors
	local styles = config.styles

	return {
		Normal = { fg = c.fg, bg = c.bg },
		NormalNC = { fg = c.fg, bg = c.bg },
		NormalFloat = { fg = c.fg_bright, bg = c.bg_float },
		FloatBorder = { fg = c.bg_visual, bg = c.bg_float },
		FloatTitle = { fg = c.cyan, bg = c.bg_float, bold = true },

		Cursor = { fg = c.bg, bg = c.fg_bright },
		CursorLine = { bg = c.bg_alt },
		CursorColumn = { bg = c.bg_alt },
		CursorLineNr = { fg = c.fg_bright, bold = true },

		LineNr = { fg = c.fg_muted },
		SignColumn = { fg = c.fg_muted, bg = c.bg },
		FoldColumn = { fg = c.fg_muted, bg = c.bg },
		Folded = { fg = c.fg_muted, bg = c.bg_alt },

		ColorColumn = { bg = c.bg_alt },
		VertSplit = { fg = c.bg_visual },
		WinSeparator = { fg = c.bg_visual },

		Visual = { bg = c.bg_visual },
		VisualNOS = { bg = c.bg_visual },

		Search = { fg = c.bg, bg = c.yellow },
		IncSearch = { fg = c.bg, bg = c.orange },
		CurSearch = { fg = c.bg, bg = c.orange },
		Substitute = { fg = c.bg, bg = c.red },

		Pmenu = { fg = c.fg, bg = c.bg_alt },
		PmenuSel = { fg = c.fg_bright, bg = c.bg_visual },
		PmenuSbar = { bg = c.bg_alt },
		PmenuThumb = { bg = c.bg_visual },

		StatusLine = { fg = c.fg, bg = c.bg_alt },
		StatusLineNC = { fg = c.fg_muted, bg = c.bg_alt },
		TabLine = { fg = c.fg_muted, bg = c.bg_alt },
		TabLineFill = { bg = c.bg_alt },
		TabLineSel = { fg = c.fg_bright, bg = c.bg },
		WinBar = { fg = c.fg, bg = c.bg },
		WinBarNC = { fg = c.fg_muted, bg = c.bg },

		NonText = { fg = c.bg_visual },
		SpecialKey = { fg = c.fg_muted },
		Whitespace = { fg = c.bg_visual },
		EndOfBuffer = { fg = c.bg_alt },

		MatchParen = { fg = c.yellow, bold = true, underline = true },
		Conceal = { fg = c.fg_muted },
		Directory = { fg = c.blue },
		Title = { fg = c.cyan, bold = true },
		ErrorMsg = { fg = c.error },
		WarningMsg = { fg = c.warning },
		ModeMsg = { fg = c.fg, bold = true },
		MoreMsg = { fg = c.cyan },
		Question = { fg = c.cyan },

		QuickFixLine = { bg = c.bg_alt },
		WildMenu = { fg = c.bg, bg = c.blue },

		DiffAdd = { bg = c.diff_add_bg },
		DiffChange = { bg = c.diff_change_bg },
		DiffDelete = { bg = c.diff_delete_bg },
		DiffText = { bg = c.diff_text_bg },
		diffAdded = { fg = c.git_add },
		diffRemoved = { fg = c.git_delete },
		diffChanged = { fg = c.git_change },

		SpellBad = { undercurl = true, sp = c.error },
		SpellCap = { undercurl = true, sp = c.warning },
		SpellLocal = { undercurl = true, sp = c.info },
		SpellRare = { undercurl = true, sp = c.hint },

		Comment = { fg = c.fg_muted, italic = styles.comments.italic },

		Constant = { fg = c.purple },
		String = { fg = c.purple, italic = styles.strings.italic },
		Character = { fg = c.purple },
		Number = { fg = c.sky },
		Boolean = { fg = c.orange },
		Float = { fg = c.sky },

		Identifier = { fg = c.fg, italic = styles.variables.italic },
		Function = { fg = c.magenta, bold = styles.functions.bold },

		Statement = { fg = c.blue, italic = styles.keywords.italic },
		Conditional = { fg = c.blue, italic = styles.keywords.italic },
		Repeat = { fg = c.blue, italic = styles.keywords.italic },
		Label = { fg = c.cyan },
		Operator = { fg = c.cyan },
		Keyword = { fg = c.blue, italic = styles.keywords.italic },
		Exception = { fg = c.red },

		PreProc = { fg = c.cyan },
		Include = { fg = c.blue },
		Define = { fg = c.magenta },
		Macro = { fg = c.teal },
		PreCondit = { fg = c.cyan },

		Type = { fg = c.yellow },
		StorageClass = { fg = c.blue },
		Structure = { fg = c.yellow },
		Typedef = { fg = c.yellow },

		Special = { fg = c.cyan },
		SpecialChar = { fg = c.orange },
		Tag = { fg = c.blue },
		Delimiter = { fg = c.cyan },
		SpecialComment = { fg = c.fg_muted, bold = true },
		Debug = { fg = c.orange },

		Underlined = { underline = true },
		Ignore = { fg = c.fg_muted },
		Error = { fg = c.error },
		Todo = { fg = c.bg, bg = c.yellow, bold = true },

		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },
		DiagnosticOk = { fg = c.success },

		DiagnosticUnderlineError = { undercurl = true, sp = c.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },
		DiagnosticUnderlineOk = { undercurl = true, sp = c.success },

		DiagnosticVirtualTextError = { fg = c.error, bg = c.bg_alt },
		DiagnosticVirtualTextWarn = { fg = c.warning, bg = c.bg_alt },
		DiagnosticVirtualTextInfo = { fg = c.info, bg = c.bg_alt },
		DiagnosticVirtualTextHint = { fg = c.hint, bg = c.bg_alt },

		DiagnosticSignError = { fg = c.error },
		DiagnosticSignWarn = { fg = c.warning },
		DiagnosticSignInfo = { fg = c.info },
		DiagnosticSignHint = { fg = c.hint },

		LspReferenceText = { bg = c.bg_highlight },
		LspReferenceRead = { bg = c.bg_highlight },
		LspReferenceWrite = { bg = c.bg_highlight },
		LspSignatureActiveParameter = { fg = c.orange, bold = true },
		LspCodeLens = { fg = c.fg_muted },
		LspCodeLensSeparator = { fg = c.fg_dark },
		LspInlayHint = { fg = c.fg_muted, bg = c.bg_alt, italic = true },

		["@lsp.type.class"] = { link = "Structure" },
		["@lsp.type.decorator"] = { fg = c.magenta },
		["@lsp.type.enum"] = { link = "Type" },
		["@lsp.type.enumMember"] = { link = "Constant" },
		["@lsp.type.function"] = { link = "Function" },
		["@lsp.type.interface"] = { fg = c.yellow },
		["@lsp.type.macro"] = { link = "Macro" },
		["@lsp.type.method"] = { link = "Function" },
		["@lsp.type.namespace"] = { fg = c.teal },
		["@lsp.type.parameter"] = { fg = c.fg },
		["@lsp.type.property"] = { fg = c.cyan },
		["@lsp.type.struct"] = { link = "Structure" },
		["@lsp.type.type"] = { link = "Type" },
		["@lsp.type.typeParameter"] = { fg = c.yellow },
		["@lsp.type.variable"] = { link = "Identifier" },

		["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { fg = c.fg_muted },
		["@comment.error"] = { fg = c.error },
		["@comment.warning"] = { fg = c.warning },
		["@comment.todo"] = { link = "Todo" },
		["@comment.note"] = { fg = c.info },

		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { fg = c.orange },
		["@constant.macro"] = { fg = c.teal },

		["@string"] = { link = "String" },
		["@string.documentation"] = { fg = c.purple },
		["@string.regex"] = { fg = c.orange },
		["@string.escape"] = { fg = c.orange },
		["@string.special"] = { fg = c.cyan },

		["@character"] = { link = "Character" },
		["@character.special"] = { fg = c.orange },

		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Float" },
		["@boolean"] = { link = "Boolean" },

		["@function"] = { link = "Function" },
		["@function.builtin"] = { fg = c.magenta },
		["@function.call"] = { fg = c.magenta },
		["@function.macro"] = { fg = c.teal },
		["@function.method"] = { fg = c.magenta },
		["@function.method.call"] = { fg = c.magenta },

		["@constructor"] = { fg = c.yellow },
		["@operator"] = { link = "Operator" },

		["@keyword"] = { link = "Keyword" },
		["@keyword.coroutine"] = { fg = c.blue },
		["@keyword.function"] = { fg = c.blue },
		["@keyword.operator"] = { fg = c.cyan },
		["@keyword.import"] = { fg = c.blue },
		["@keyword.type"] = { fg = c.blue },
		["@keyword.modifier"] = { fg = c.blue },
		["@keyword.repeat"] = { link = "Repeat" },
		["@keyword.return"] = { fg = c.blue },
		["@keyword.exception"] = { link = "Exception" },
		["@keyword.conditional"] = { link = "Conditional" },

		["@punctuation.delimiter"] = { fg = c.fg_muted },
		["@punctuation.bracket"] = { fg = c.fg },
		["@punctuation.special"] = { fg = c.cyan },

		["@tag"] = { fg = c.blue },
		["@tag.attribute"] = { fg = c.cyan },
		["@tag.delimiter"] = { fg = c.fg_muted },

		["@type"] = { link = "Type" },
		["@type.builtin"] = { fg = c.yellow },
		["@type.definition"] = { fg = c.yellow },
		["@type.qualifier"] = { fg = c.blue },

		["@variable"] = { fg = c.fg },
		["@variable.builtin"] = { fg = c.red },
		["@variable.parameter"] = { fg = c.fg },
		["@variable.member"] = { fg = c.cyan },

		["@property"] = { fg = c.cyan },
		["@attribute"] = { fg = c.cyan },
		["@namespace"] = { fg = c.teal },
		["@module"] = { fg = c.teal },

		["@label"] = { link = "Label" },

		["@markup.heading"] = { fg = c.magenta, bold = true },
		["@markup.heading.1"] = { fg = c.red, bold = true },
		["@markup.heading.2"] = { fg = c.magenta, bold = true },
		["@markup.heading.3"] = { fg = c.purple, bold = true },
		["@markup.heading.4"] = { fg = c.blue, bold = true },
		["@markup.heading.5"] = { fg = c.cyan, bold = true },
		["@markup.heading.6"] = { fg = c.teal, bold = true },
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.quote"] = { fg = c.fg_muted, italic = true },
		["@markup.math"] = { fg = c.blue },
		["@markup.link"] = { fg = c.cyan },
		["@markup.link.label"] = { fg = c.blue, underline = true },
		["@markup.link.url"] = { fg = c.purple, underline = true },
		["@markup.raw"] = { fg = c.green },
		["@markup.raw.block"] = { fg = c.fg },
		["@markup.list"] = { fg = c.cyan },
		["@markup.list.checked"] = { fg = c.green },
		["@markup.list.unchecked"] = { fg = c.fg_muted },

		["@diff.plus"] = { fg = c.git_add },
		["@diff.minus"] = { fg = c.git_delete },
		["@diff.delta"] = { fg = c.git_change },
	}
end

return M
