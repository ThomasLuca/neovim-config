local opts = { noremap = true, silent = true }
local keymap = vim.keymap
local global = vim.g
global.mapleader = ' '
global.maplocalleader = ' '

-- delete one word in insert mode (note that <C-h> sends the same ASCII escape sequence as <C-BS>)
keymap.set('i', '<C-h>', '<C-w>', opts)

-- open up lazy.nvim UI
keymap.set('n', '<leader>l', ':Lazy<CR>', opts)

-- toggle undotree
keymap.set('n', '<leader>cu', ':UndotreeToggle<CR>', opts)

-- close the current buffer
keymap.set('n', '<C-x>', ':bd<CR>', opts)

-- quickly switch between buffers
keymap.set('n', '<', ':bp<CR>', opts)
keymap.set('n', '>', ':bn<CR>', opts)

-- quickly switch between windows
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)

-- toggle transparency
keymap.set('n', '<leader>ut', ':TransparentToggle<CR>', { desc = "Transparency" }, opts)

-- replace current word
keymap.set('n', '<leader>tr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace current word"})

-- vertical movement keeps cursor in middle
keymap.set('n', '<C-j>', '<C-d>zz', opts)
keymap.set('n', '<C-k>', '<C-u>zz', opts)

-- quick resizing of buffers
keymap.set('n', '<C-up>', ':resize -2<cr>', opts)
keymap.set('n', '<C-down>', ':resize +2<cr>', opts)
keymap.set('n', '<C-left>', ':vertical resize -2<cr>', opts)
keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- copy into system clipboard with CTRL + C
keymap.set('v', '<C-c>', '"+y', opts)

-- copy into host system clipboard with <leader>y
keymap.set('v', '<leader>y', '"*y', opts)

-- prevent x from copying over Vim clipboard
keymap.set('n', 'x', '"_x', opts)

-- indent and outdent lines in visual mode
keymap.set('v', '<TAB>', '<S->>gv', opts)
keymap.set('v', '<S-TAB>', '<S-<>gv', opts)

-- the greatest remap ever (Primeagen)
keymap.set('v', '<leader>yp', '"_dP', { desc = "Paste without yank"}, opts)

-- move lines around
keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- vertical movement keeps cursor in middle (visual mode)
keymap.set('v', '<C-j>', '<C-d>zz', opts)
keymap.set('v', '<C-k>', '<C-u>zz', opts)

-- prevent incrementing numbers in file (this is actually horrible)
keymap.set('v', '<C-a>', 'ggVG', opts)

keymap.set('v', '<C-d>', '"+ygvd', opts)

-- File navigation (netrw)
keymap.set('n', '<leader>e', ':Ex<cr>', { desc = "Netrw" }, opts)

keymap.set('n', '<leader>cl', ':LspInfo<cr>', { desc = "Lsp Info" }, opts)
