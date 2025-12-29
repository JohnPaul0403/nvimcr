-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use({
		'rebelot/kanagawa.nvim',
		as='kanagawa',
		config = function()
			vim.cmd("colorscheme kanagawa")
		end
	})

	use({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate', 
	})

	use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion Engine
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
	use {
		'williamboman/mason.nvim'
	}
	use {
		'williamboman/mason-lspconfig.nvim'
	}


	use({
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',     -- LSP source
			'hrsh7th/cmp-buffer',       -- Buffer word source
			'hrsh7th/cmp-path',         -- Filesystem path source
			'L3MON4D3/LuaSnip',         -- Snippet engine
			'saadparwaiz1/cmp_luasnip', -- Snippets source
		}
	})
	-- Optional: Snippet collections
	use('rafamadriz/friendly-snippets')

    use({"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end})

    use({
        'echasnovski/mini.nvim',
        config = function()
            -- You only need to setup the 'pairs' module
            require('mini.pairs').setup({})
            -- You can add other 'mini.nvim' modules here too
        end
    })
end)
