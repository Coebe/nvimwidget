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

    --[[
  config = {
	  -- max taks num
	  max_jobx = 16,
	  -- customize source
	  git = {
		  default_url_format = 'git@github.com:%s',
	  },
  }
  ]]
    -- Common utilities
    -- use('nvim-lua/plenary.nvim')

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = {
            'nvim-lua/plenary.nvim',
            -- 'kyazdani42/nvim-web-devicons',
            'nvim-tree/nvim-web-devicons',
            --'ryanoasis/vim-devicons',
        }
    }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSInstallFromGrammar' })
    --use('nvim-treesitter/nvim-treesitter', {run = ':TSInstall'})
    --use('nvim-treesitter/playground')

    -- the recent file display
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')

    -- a git wrapper
    use('tpope/vim-fugitive')

    --
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
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
    use('ThePrimeagen/vim-be-good')
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }
end)
