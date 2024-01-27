return {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
    },
    config = function ()
        vim.keymap.set('n', '<leader>cd', '<cmd>TroubleToggle<cr>', { desc = "Diagnostics"} , {silent = true, noremap = true})
    end
}
