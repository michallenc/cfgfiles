-- Syntax highlighting
return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" }, -- Lazy loading
	build = ":TSUpdate",                 -- Ensure parsers up to date
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require('nvim-treesitter.configs')

		treesitter.setup({
			auto_install = true, -- Automatically install parsers for missing languages
			sync_install = false, -- Disable synchronous parser installation to avoid blocking
			-- Enable highlighting, indenting, auto-tagging based on tree-sitter
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			-- Parsers for specific languages
			ensure_installed = {
				'json',
				'yaml',
				'html',
				'markdown',
				'markdown_inline',
				'bash',
				'lua',
				'vim',
				'python',
				'gitignore',
				'c',
				'cpp',
				'zig',
				'meson',
				'make',
				'nix'
			},
			ignore_install = {},
		})
	end,
}
