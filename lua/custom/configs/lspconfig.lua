local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
    on_attach = function (client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
        on_attach(client, bufnr)
    end,
    capabilities = capabilities,
}
-- Zig
lspconfig.zls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "zls" },
    filetypes = { "zig", "zir" },
    root_dir = lspconfig.util.root_pattern("zls.json", "build.zig", ".git"),
    single_file_support = true,
}
