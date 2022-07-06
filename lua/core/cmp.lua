local M = {}

function M.setup()
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

return M