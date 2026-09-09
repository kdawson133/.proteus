-- Line Numbers
vim.o.number = true
vim.o.relativenumber = true

-- Interface
vim.o.cursorline = true
vim.cmd([[ highlight CursorLine guibg=#1e1e2e guifg=none ]])
vim.o.signcolumn = 'yes'
vim.o.termguicolors = true
vim.o.mouse = 'a'
vim.o.completeopt = 'menuone,noselect'
vim.o.showmode = true
vim.o.autoread = true
vim.o.hidden = true
vim.o.gdefault = true
vim.o.lazyredraw = false

-- Splits
vim.o.splitbelow = true
vim.o.splitright = true

-- Indentation
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- Swap Files
vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false

-- Line Wrap
vim.o.wrap = true
vim.o.linebreak = true
vim.o.showbreak = '↳'

-- Scrolling
vim.o.scrolloff = 8
vim.o.sidescrolloff = 15
vim.o.sidescroll = 5


-- Save Undo History
vim.o.undofile = true
vim.o.undodir = os.getenv('HOME') .. '/.cache/undodir'

-- Searching
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Update Time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

