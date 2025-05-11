-- Formatter
return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				c = { "clang-format" },
				lua = { "stylua" },
				nix = { "alejandra" },
				python = { "ruff_fix", "ruff_format", "isort" },
				sh = { "shfmt" },
				zig = { "zigfmt" },
			},
		})
	end,
}
