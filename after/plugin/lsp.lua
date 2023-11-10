local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
    lsp_zero.buffer_autoformat()
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'gopls',
        'jsonls',
    },
    handlers = {
        lsp_zero.default_setup,
    }
})

lsp_zero.setup_servers({
    'gopls',
    'jsonls',
})

lsp_zero.set_preferences({
    sign_icons = {}
})

lsp_zero.setup()
