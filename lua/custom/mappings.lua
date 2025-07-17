local M = {}
-- General mappings
M.general = {
    -- Normal mode
    n = {
        -- new buffer
        ["<leader>bn"] = { "<cmd> enew <CR>", "New buffer" },
        -- close buffer + hide terminal buffer
        ["<leader>bq"] = {
            function()
                require("nvchad.tabufline").close_buffer()
            end,
            "Close buffer",
        },
    },
    -- Insert mode
    i = {},
    -- Terminal mode
    t = {
        ["<C-space>"] = {
            vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
            "Escape terminal mode"
        }
    },
}
-- Dap specific mappings
M.dap = {
    n = {
        ["<leader>db"] = {
            "<cmd> DapToggleBreakpoint <CR>",
            "Add breakpoint at line",
        },
        ["<leader>dr"] = {
            "<cmd> DapContinue <CR>",
            "Start or continue the debugger",
        },
    },
}
-- LSPConfig specific mappings
M.lspconfig = {
    plugin = true,
    n = {
        ["go"] = {
            "<cmd> ClangdSwitchSourceHeader <CR>",
            "Switch between source and header file",
        }
    },
}
-- Nvim Tree specific mappings
--M.nvimtree = {
--    plugin = true,
--    n = {
--    },
--}
return M
