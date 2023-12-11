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

local ok, lazy = pcall(require, "lazy")
if not ok then
    return
end

lazy.setup({
    {
        "srcery-colors/srcery-vim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme srcery]])
        end,
    },
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-lualine/lualine.nvim" },
    { "nvimdev/dashboard-nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.5" },
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-file-browser.nvim" },
    { "nvim-treesitter/nvim-treesitter" },
    { "windwp/nvim-autopairs", event = "InsertEnter" },
    { "akinsho/toggleterm.nvim", version = '*', config = true },
    -- Completion plugins
    { "hrsh7th/nvim-cmp", event = "InsertEnter" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "L3MON4D3/LuaSnip", version = "v2.*" },
    { "saadparwaiz1/cmp_luasnip" },
    { "rafamadriz/friendly-snippets" },
    -- LSP
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig", event = { "BufReadPre", "BufNewFile" } }
})
