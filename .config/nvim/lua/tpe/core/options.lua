-- tree style
vim.cmd("let g:netrw_liststyle = 3")

-- vim options
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = true
vim.opt.tabstop = 4
vim.opt.swapfile = false
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ 'r', 'o' })
    end,
})

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true

-- termguicolors
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = "indent,eol,start"

--clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows 
vim.opt.splitright = true
vim.opt.splitbelow = true

-- keymaps
vim.g.mapleader = " "

-- vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
-- vim.keymap.set('n', '<leader>e', ':Explore<CR>')


-- transparency
vim.cmd [[
    highlight Normal guibg=none
    highlight NonText guibg=none    
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
]]
