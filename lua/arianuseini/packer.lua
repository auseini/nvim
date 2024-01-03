-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'folke/tokyonight.nvim'
	use{'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
	use('nvim-treesitter/playground')
	use('ThePrimeagen/harpoon')
	use 'mbbill/undotree'
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},
		}
	}
    use {"rebelot/kanagawa.nvim", as = "kanagawa" }
    use { "m4xshen/autoclose.nvim" }
    -- Remove the `use` here if you're using folke/lazy.nvim.
--use {
  --'Exafunction/codeium.vim',
 -- config = function ()
    -- Change '<C-g>' here to any keycode you like.
  --  vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
   -- vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
   -- vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
   -- vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  --end
--}
use({
  "epwalsh/obsidian.nvim",
  tag = "*",  -- recommended, use latest release instead of latest commit
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "personal",
          path = "~/personal/notes",
        },
      },

      -- see below for full list of options 👇
    })
  end,
})
use { "neanias/everforest-nvim", as = "everforest" }
use {"EdenEast/nightfox.nvim"}
use {"nvim-treesitter/nvim-treesitter-context"}
use {'rose-pine/neovim', as = 'rose-pine'}
end)
