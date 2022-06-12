local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	-- Packer can manage itself as an optional plugin
	use {
			{'wbthomason/packer.nvim'},
			{'ellisonleao/gruvbox.nvim'},
			{'williamboman/nvim-lsp-installer'},
			{
				'neovim/nvim-lspconfig',
				config = function()
					local lspconfig = require('lspconfig')
					require('nvim-lsp-installer').setup {}
					lspconfig.sumneko_lua.setup {
						settings = {
							Lua = {
								runtime = {
									-- Tell the language server which version of Lua you are using (most likely LuaJIT in the case of neovim)
									version = 'LuaJIT',
								},
								diagnostics = {
									-- Get the language server to recognise the "vim" global
									globals = {'vim'},
								},
								workspace = {
									-- Make the language server aware of Neovim runtime files
									library = vim.api.nvim_get_runtime_file('', true),
								},
								-- Do not send telemetry data
								telemetry = {
									enable = false,
								},
							},
						},
					}
					lspconfig.clangd.setup {}
				end
			},
			{
				'L3MON4D3/LuaSnip',
				requires = {
					'rafamadriz/friendly-snippets'
				},
				config = function ()
					require('luasnip.loaders.from_vscode').lazy_load()
				end
			},
			{
				'windwp/nvim-autopairs',
				config = function ()
					require("nvim-autopairs").setup {}
				end
			},
			{
				'hrsh7th/nvim-cmp',
				requires = {
					'hrsh7th/cmp-nvim-lsp',
					'hrsh7th/cmp-buffer',
					'hrsh7th/cmp-path',
					'saadparwaiz1/cmp_luasnip'
				},
				config = function()
					local cmp = require'cmp'

					cmp.setup(
					{
						snippet = {
							-- REQUIRED: You must specify a snippet engine
							expand = function(args)
								require('luasnip').lsp_expand(args.body)
							end,
						},
						mapping = cmp.mapping.preset.insert({
							['<C-b>'] = cmp.mapping.scroll_docs(-4),
							['<C-f>'] = cmp.mapping.scroll_docs(4),
							['<C-Space>'] = cmp.mapping.complete(),
							['<C-e>'] = cmp.mapping.abort(),
							['<TAB>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
						}),
						sources = cmp.config.sources({
							{ name = 'nvim_lsp' },
							{ name = 'luasnip' },
						}, {
							{ name = 'buffer' },
						})
					})
				end
			},
			{
				'nvim-lualine/lualine.nvim',
				requires = {'kyazdani42/nvim-web-devicons', opt = true},
				config = function ()
					require('lualine').setup()
					options = { theme = 'gruvbox' }
				end
			}
	}


  if packer_bootstrap then
	require('packer').sync()
  end
end)
