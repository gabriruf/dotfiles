local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

treesitter.setup {
    ensure_installed = { "c", "lua", "gdscript", "vim", "vimdoc", "query" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
}
