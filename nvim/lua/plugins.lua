return require('packer').startup(function(use)
	-- Configuration is going here
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

	-- Plugins for code completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- Nvimtree for file exploring
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optionals
		}
	}
	-- DAP for debugging
	use 'mfussenegger/nvim-dap'
	use {
		'rcarriga/nvim-dap-ui',
		requires = {
			'mfussenegger/nvim-dap'
		}
	}
	-- Themes
	use 'Mofiqul/dracula.nvim'
	use 'folke/tokyonight.nvim'

	-- Syntaxhighlight 
	use {
		'nvim-treesitter/nvim-treesitter',
		run=":TSUpdate"
		--run = function()
		--	require('nvim-treesitter.install').update{with_sync = true}
		--end
		
	}

	-- file-finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{ 'nvim-lua/plenary.nvim'}}
	}

	--status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyadzani42/nvim-web-devicons' , opt=true
		}
	}
end)
