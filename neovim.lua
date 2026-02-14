--[[
Previous config (commented out):

return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                bg = "#1A1515",
                bg_dark = "#1A1515",
                bg_highlight = "#725a5a",
                fg = "#ffe9c7",
                fg_dark = "#dcc9bc",
                comment = "#725a5a",
                red = "#f07342",
                orange = "#f07342",
                yellow = "#959a6b",
                green = "#768f80",
                cyan = "#756d94",
                blue = "#614f76",
                purple = "#7b3d79",
                magenta = "#7b3d79",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
]]

return {
	{
		"Biscuit-Theme/nvim",
		name = "biscuit",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("biscuit")

				local function fix_popup_highlights()
					-- Force popup/float UI to a consistent palette after any colorscheme/plugin reload.
					local bg = "#1A1515"
					local light_bg = "#453636"
					local fg = "#ffe9c7"
					local border = "#725a5a"
					local accent = "#f07342"
					local indent = "#453636"
					local scope = "#725a5a"

					vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg, fg = fg })
				vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg, fg = border })
				vim.api.nvim_set_hl(0, "Pmenu", { bg = bg, fg = fg })
				vim.api.nvim_set_hl(0, "PmenuSel", { bg = border, fg = fg, bold = true })
				vim.api.nvim_set_hl(0, "PmenuSbar", { bg = bg })
				vim.api.nvim_set_hl(0, "PmenuThumb", { bg = border })
				vim.api.nvim_set_hl(0, "PmenuKind", { bg = bg, fg = accent })
				vim.api.nvim_set_hl(0, "PmenuExtra", { bg = bg, fg = border })
				vim.api.nvim_set_hl(0, "PmenuKindSel", { bg = border, fg = accent, bold = true })
				vim.api.nvim_set_hl(0, "PmenuExtraSel", { bg = border, fg = fg, bold = true })
				vim.api.nvim_set_hl(0, "WildMenu", { bg = border, fg = fg, bold = true })
				vim.api.nvim_set_hl(0, "WildSel", { bg = border, fg = fg, bold = true })

				-- blink.cmp (used for :cmdline completion in your setup)
				vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = light_bg, fg = fg })
				vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { bg = light_bg, fg = border })
				vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = border, fg = fg, bold = true })
				vim.api.nvim_set_hl(0, "BlinkCmpScrollBarGutter", { bg = light_bg })
				vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", { bg = border })
				vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = light_bg, fg = fg })
				vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { bg = light_bg, fg = border })
				vim.api.nvim_set_hl(0, "BlinkCmpDocSeparator", { bg = light_bg, fg = border })
				vim.api.nvim_set_hl(0, "BlinkCmpLabel", { fg = fg })
				vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { fg = accent, bold = true })
				vim.api.nvim_set_hl(0, "BlinkCmpLabelDetail", { fg = border })
				vim.api.nvim_set_hl(0, "BlinkCmpLabelDescription", { fg = border })
				vim.api.nvim_set_hl(0, "BlinkCmpSource", { fg = accent })
				vim.api.nvim_set_hl(0, "BlinkCmpKind", { fg = accent })
				for _, kind in ipairs({
					"Text",
					"Method",
					"Function",
					"Constructor",
					"Field",
					"Variable",
					"Class",
					"Interface",
					"Module",
					"Property",
					"Unit",
					"Value",
					"Enum",
					"Keyword",
					"Snippet",
					"Color",
					"File",
					"Reference",
					"Folder",
					"EnumMember",
					"Constant",
					"Struct",
					"Event",
					"Operator",
					"TypeParameter",
				}) do
					vim.api.nvim_set_hl(0, "BlinkCmpKind" .. kind, { fg = accent })
				end

				-- nvim-cmp compatibility groups (safe if not used)
				vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = fg })
				vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = accent, bold = true })
				vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = border })
				vim.api.nvim_set_hl(0, "CmpItemKind", { fg = accent })
				for _, kind in ipairs({
					"Text",
					"Method",
					"Function",
					"Constructor",
					"Field",
					"Variable",
					"Class",
					"Interface",
					"Module",
					"Property",
					"Unit",
					"Value",
					"Enum",
					"Keyword",
					"Snippet",
					"Color",
					"File",
					"Reference",
					"Folder",
					"EnumMember",
					"Constant",
					"Struct",
					"Event",
					"Operator",
					"TypeParameter",
				}) do
					vim.api.nvim_set_hl(0, "CmpItemKind" .. kind, { fg = accent })
				end

					-- noice cmdline popup groups (safe if unused)
					vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = bg, fg = fg })
					vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = bg, fg = border })
					vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = accent })

					-- indent-blankline/ibl guides (right of line numbers)
					vim.api.nvim_set_hl(0, "IblIndent", { fg = indent, nocombine = true })
					vim.api.nvim_set_hl(0, "IblWhitespace", { fg = indent, nocombine = true })
					vim.api.nvim_set_hl(0, "IblScope", { fg = scope, nocombine = true })
					vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = indent, nocombine = true })
					vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = scope, nocombine = true })

					-- Rainbow indent fallback groups if enabled by plugin config.
					vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#F07342" })
					vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E39C45" })
					vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#614F76" })
					vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#959A6B" })
					vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#768F80" })
					vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#7B3D79" })
					vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#AE3F82" })

					-- Git/diff gutter bars in signcolumn.
					vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
					vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#2d2424", fg = "#768F80" })
					vim.api.nvim_set_hl(0, "DiffChange", { bg = "#2d2424", fg = "#756D94" })
					vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#2d2424", fg = "#F07342" })
					vim.api.nvim_set_hl(0, "DiffText", { bg = "#453636", fg = "#DCC9BC", bold = true })
					vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#768F80", bg = "NONE" })
					vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#756D94", bg = "NONE" })
					vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#F07342", bg = "NONE" })
					vim.api.nvim_set_hl(0, "GitSignsTopdelete", { fg = "#F07342", bg = "NONE" })
					vim.api.nvim_set_hl(0, "GitSignsChangedelete", { fg = "#E39C45", bg = "NONE" })
					vim.api.nvim_set_hl(0, "MiniDiffSignAdd", { fg = "#768F80", bg = "NONE" })
					vim.api.nvim_set_hl(0, "MiniDiffSignChange", { fg = "#756D94", bg = "NONE" })
					vim.api.nvim_set_hl(0, "MiniDiffSignDelete", { fg = "#F07342", bg = "NONE" })
				end

			fix_popup_highlights()
			local group = vim.api.nvim_create_augroup("OmarchyBiscuitPopupHighlights", { clear = true })
			vim.api.nvim_create_autocmd("ColorScheme", {
				group = group,
				callback = fix_popup_highlights,
			})
			vim.api.nvim_create_autocmd({ "User" }, {
				group = group,
				pattern = { "BlinkCmpMenuOpen", "BlinkCmpShow" },
				callback = fix_popup_highlights,
			})
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "biscuit",
		},
	},
}
