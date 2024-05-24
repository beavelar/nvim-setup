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
    { "nvim-telescope/telescope.nvim" },
    { "nvim-lua/plenary.nvim" },
    { "telescope-fzf-native.nvim" },

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter" },
    { "nvim-treesitter/playground" },

    -- Harpoon
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
    { "vrischmann/tree-sitter-templ" },

    -- Diffview
    { "sindrets/diffview.nvim" },
    { "nvim-tree/nvim-web-devicons" }
})

vim.cmd("colorscheme nightfly")
