return {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        local status_ok, telescope = pcall(require, 'telescope')

        if not status_ok then
            return
        end

        telescope.setup()
        local builtin = require('telescope.builtin')

        -- Keymaps / keybinds / shortcuts
        vim.keymap.set( 'n', '<leader>ff', builtin.find_files, { desc = "Files"} )
        vim.keymap.set( 'n', '<leader>fr', builtin.oldfiles, { desc = "Resent" } )
        vim.keymap.set( 'n', '<leader>fg', builtin.live_grep, { desc = "Grep" } )
        vim.keymap.set( 'n', '<leader>fh', builtin.help_tags, { desc = "Help" } )
        vim.keymap.set( 'n', '<leader>fb', builtin.buffers, { desc = "Buffers" } )
        vim.keymap.set( 'n', '<leader>fp', builtin.git_files, { desc = "Git Files" } )
        vim.keymap.set( 'n', '<leader>uc', builtin.colorscheme, { desc = "Colorscheme" } )
        vim.keymap.set( 'n', '<leader>fc', builtin.colorscheme, { desc = "Colorscheme" } )
        vim.keymap.set( 'n', '<leader>fq', builtin.quickfix, { desc = "Quickfix" } )
        vim.keymap.set( 'n', '<leader>fk', builtin.keymaps, { desc = "Keymaps" } )
        vim.keymap.set( 'n', '<leader>fm', builtin.man_pages, { desc = "Man page"} )
        vim.keymap.set( 'n', '<leader>fs', builtin.lsp_document_symbols, { desc = "Symbols" } )
    end
}
