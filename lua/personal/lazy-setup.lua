local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Theme
    { "bluz71/vim-nightfly-colors" },

    -- Telescope
    { "nvim-telescope/telescope.nvim",    tag = "0.1.4" },
    { "nvim-lua/plenary.nvim",            tag = "v0.1.4" },
    { "telescope-fzf-native.nvim" },

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter",  tag = "v0.9.1" },
    { "nvim-treesitter/playground" },

    -- Harppon
    { "theprimeagen/harpoon" },

    -- LSP
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "VonHeikemen/lsp-zero.nvim",        branch = "v3.x" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },

    -- Templ
    { "vrischmann/tree-sitter-templ" }
})

vim.cmd("colorscheme nightfly")
