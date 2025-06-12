-- Basic Vim Settings
local opt = vim.opt

opt.number = true
opt.mouse = "a"
opt.autoindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.encoding = "utf-8"
opt.visualbell = true
opt.scrolloff = 5
opt.fillchars = { eob = " " }
opt.clipboard = unnamedplus
opt.background = dark
opt.wildmode = longest, list
opt.wrap = false
opt.colorcolumn = "80"
opt.swapfile = false
opt.splitright = true
opt.splitbelow = true
vim.g.mapleader = "-"
vim.diagnostic.config({ virtual_text = true })
vim.o.pumheight = 15
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

-- Keymaps
vim.keymap.set("n", "<C-Y>", "<C-R>")
vim.keymap.set("n", "<C-A>", "<C-Z>")
vim.keymap.set("n", "<C-Z>", "u")
vim.keymap.set("n", "<C-F>", function() require("conform").format({ lsp_format = "fallback" }) end)
vim.keymap.set("n", "<C-T>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<Tab>", "<C-w>w")
vim.keymap.set('', '<leader>y', '"+y')           -- yank selection
vim.keymap.set('', '<leader>Y', '"+y$')          -- yank line
vim.keymap.set('n', '<leader>p', '"+p')          -- paste selection
vim.keymap.set('n', '<leader>P', '"+P')          -- paste line
vim.keymap.set({ 'n', 'v' }, '<leader>x', '"+d') -- delete motion
vim.keymap.set({ 'n', 'v' }, '<leader>X', '"+D') -- delete line
