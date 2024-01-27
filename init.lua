require('config.options')
require('config.keymaps')
require('config.lazy')
require('config.colorscheme')

vim.cmd([[autocmd FileType yaml setlocal indentexpr=]])
vim.cmd([[autocmd FileType yml setlocal indentexpr=]])
