-- Linters
return {
	"mfussenegger/nvim-lint",
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			c = { "clangtidy" },
			python = { "ruff", "mypy" },
		}

		vim.api.nvim_create_autocmd({ "BufReadPost", "BufWrite", "InsertLeave" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}

