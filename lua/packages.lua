local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	-- Packer can manage itself as an optional plugin
	use { 'wbthomason/packer.nvim', opt = true }

	-- Completion
	use {'hrsh7th/nvim-cmp',
		requires = { 'neovim/nvim-lspconfig',
				'hrsh7th/cmp-nvim-lsp',
				'hrsh7th/cmp-buffer',
				'hrsh7th/cmp-path',
				'hrsh7th/cmp-cmdline',
			}
		}
	-- snippets
	use {'saadparwaiz1/cmp_luasnip',
		requires = 'L3MON4D3/LuaSnip'
	}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
