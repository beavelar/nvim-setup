local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'bashls',
        'bufls',
        'cssls',
        'dockerls',
        'docker_compose_language_service',
        'gopls',
        'html',
        'jsonls',
        'sqlls',
        'templ'
    },
    handlers = {
        lsp_zero.default_setup,
    }
})

lsp_zero.setup_servers({
    'bashls',
    'bufls',
    'cssls',
    'dockerls',
    'docker_compose_language_service',
    'gopls',
    'html',
    'jsonls',
    'sqlls',
    'templ'
})

lsp_zero.set_preferences({
    sign_icons = {}
})

lsp_zero.setup()
