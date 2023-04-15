-- 2023-04-15 21:33
-- use lazy vim and comment packer plugins manager for now
if true then return end

print("hi, packer is loaded.")
-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--local mirror = 'https://ghproxy.com/https://github.com'

--require"nvim-treesitter.install".compilers
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')
--vim.cmd [[packadd 'packer.nvim']]

--require('packer').init({
--    git = {
--        default_url_format = 'git@github.com:%s'
--    }
--})

return require('packer').startup(function(use)
    -- Packer can manage itself
    -- use { mirror .. 'wbthomason/packer.nvim' }

    -- Packer
    use 'wbthomason/packer.nvim'

    use 'LazyVim/LazyVim'
    -- Common utilities
    -- use('nvim-lua/plenary.nvim')

    -- use {
    --     'nvim-telescope/telescope.nvim', tag = '0.1.1',
    --     -- or                            , branch = '0.1.x',
    --     requires = {
    --         'nvim-lua/plenary.nvim',
    --         -- 'kyazdani42/nvim-web-devicons',
    --         --'ryanoasis/vim-devicons',
    --     }
    -- }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    --use('nvim-treesitter/nvim-treesitter', { run = ':TSInstallFromGrammar' })
    --use('nvim-treesitter/nvim-treesitter', {run = ':TSInstall'})
    --use('nvim-treesitter/playground')

    -- the recent file display
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')


    -- practice nvim
    use('ThePrimeagen/vim-be-good')

    ------------------------------------------------------------
    -----                     coding                       -----
    ------------------------------------------------------------

    -- a Git related plugins
    use('tpope/vim-fugitive')
    use('tpope/vim-rhubarb')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- lsp support
            -- Automatically install LSPs to stdpath for neovim
            {
                -- LSP Configuration & Plugins
                'neovim/nvim-lspconfig',
                dependencies = {
                    -- Useful status updates for LSP
                    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
                    { 'j-hui/fidget.nvim', opts = {} },

                    -- Additional lua configuration, makes nvim stuff amazing!
                    'folke/neodev.nvim',
                }
            },                                                     -- required
            { 'williamboman/mason.nvim',          config = true }, -- optional
            { 'williamboman/mason-lspconfig.nvim' },               -- optional

            -- autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

    use { 'github/copilot.vim' }

    ------------------------------------------------------------
    -----                  layout plugin                   -----
    ------------------------------------------------------------
    use('preservim/nerdtree')

    ------------------------------------------------------------
    -----               decoration plugin                  -----
    ------------------------------------------------------------
    use('nvim-tree/nvim-web-devicons')
end)
