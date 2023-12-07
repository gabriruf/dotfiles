local ok1, mason = pcall(require, "mason")
if not ok1 then
    return
end

local ok2, masonlsp = pcall(require, "mason-lspconfig")
if not ok2 then
    return
end

mason.setup {
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
}

masonlsp.setup {
    -- list of servers for mason to install
    ensure_installed = {
        "clangd",
        "lua_ls",
    },
    -- auto-install configured servers (with lspconfig)
    automatic_installation = true, -- not the same as ensure_installed
}
