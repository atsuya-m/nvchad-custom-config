-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.scrolloff = 8
vim.opt.softtabstop = 0
vim.opt.list = true
vim.opt.listchars = "tab:>-,trail:.,eol:↴,extends:>,precedes:<,nbsp:%"
vim.opt.autoindent = true
