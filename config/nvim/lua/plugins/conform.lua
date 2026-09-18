-- Formatter
return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters = {
				docstrfmt = {
					stdin = false,
					args = { "$FILENAME", "--no-docstring-trailing-line" },
				},
			},
			formatters_by_ft = {
				c = { "clang-format" },
				lua = { "stylua" },
				nix = { "alejandra" },
				python = { "ruff_fix", "ruff_format", "isort", "docstrfmt" },
				sh = { "shfmt" },
				zig = { "zigfmt" },
				rst = { "docstrfmt" },
			},
		})
	end,
}
