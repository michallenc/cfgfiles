local ignore_filetypes_list = { "%.a", "%.0", "%.o", "%.dat", "%.exe", "%.bin" }

-- Fuzzy search
return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim', { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },
	config = function()
		local telescope = require('telescope')
		local actions = require('telescope.actions')

		telescope.setup({
			defaults = {
				--layout_strategy = "vertical",
				sorting_strategy = "ascending",
				mappings = {
					n = {
						['<A-CR>'] = "select_vertical",
					},
					i = {
						['<A-CR>'] = "select_vertical",
						['<esc>'] = actions.close,
					},
				},
				file_ignore_patterns = ignore_filetypes_list,
				vimgrep_arguments = {
					'rg',
					'--column',
				}
			},
		})

		telescope.load_extension('fzf') -- Load fuzzy finder extension

		local opts = { noremap = true, silent = true }
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<C-P>', builtin.find_files, opts)
		vim.keymap.set('n', '<C-S>', builtin.live_grep, opts)
	end,
}
