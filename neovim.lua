return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#292025",
				bg_dark = "#3a2d32",
				bg_highlight = "#7a6a60",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#fff3cf",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#f7dd9b",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#c5a0b6",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#ff8c68",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#e88f37",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#a4a900",
				-- green: Comments, strings, success states, git additions
				green = "#f0e65a",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#cfe6ee",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#fece6e",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#c5a0b6",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#c5a0b6",
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
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
