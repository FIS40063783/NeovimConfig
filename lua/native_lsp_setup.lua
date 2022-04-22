-- Settings for Neovim native LSP
-- General LSP settings
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = true,
		signs = true,
		underline = true,
		update_in_insert = true,
	}
)

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Enable LSP for Rust
require'lspconfig'.rust_analyzer.setup {
	capabilities = capabilities
}

-- C/C++
require'lspconfig'.clangd.setup {
	capabilities = capabilities
}

-- Python
require'lspconfig'.pyright.setup {
	capabilities = capabilities
}

-- LaTeX
require'lspconfig'.texlab.setup {
	capabilities = capabilities
}

-- Go
require'lspconfig'.gopls.setup {
	capabilities = capabilities
}
