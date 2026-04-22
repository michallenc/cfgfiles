local lsps = {
	{ "lua_lsp" },
	{
		"clangd",
		{
			init_options = {
				-- https://xnacly.me/posts/2025/clangd-lsp/
				fallbackFlags = { '--std=gnu2x' },
			},
		}
	},
	{ "pylsp", },
	{ "zls" },
}

local keymap = vim.keymap
-- Custom keybinds when LSP server attaches to buffer
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		local function opts(desc)
			return { desc = desc, buffer = ev.buf, silent = true }
		end

		keymap.set('n', 'K', vim.lsp.buf.hover, opts('Show documentation'))
		keymap.set('n', 'gR', '<cmd>Telescope lsp_references<cr>', opts('Show LSP references'))
		keymap.set('n', 'gD', vim.lsp.buf.declaration, opts('Go to declaration'))
		keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts('Show LSP definitions'))
		keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts('Show LSP implementations'))
		keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<cr>', opts('Show LSP type definitions'))
		keymap.set({ 'n', 'v' }, 'ga', vim.lsp.buf.code_action, opts('Show available code actions'))
	end,
})

for _, lsp in pairs(lsps) do
	local name, config = lsp[1], lsp[2]
	vim.lsp.enable(name)
	if config then
		vim.lsp.config(name, config)
	end
end
