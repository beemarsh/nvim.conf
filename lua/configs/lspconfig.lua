-- NvChad's default LSP setup. This loads standard configurations,
-- on_attach function, and capabilities.
require("nvchad.configs.lspconfig").defaults()

-- These are the default servers NvChad enables.
local servers = {
  "html",
  "cssls",
  "jsonls", -- JSON language server (often default)
  "lua_ls", -- Lua language server (often default for Neovim configs)
}
vim.lsp.enable(servers)

-- Now, we will add your specific language server configurations below this line.

-- ** Your Specific Language Server Configurations **
-- This section will add or customize servers beyond NvChad's defaults.
local lspconfig = require "lspconfig"
local on_attach = require("nvchad.configs.lspconfig").on_attach -- Re-use NvChad's on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities -- Re-use NvChad's capabilities


-- Python: Pyright
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Python: ruff_lsp (for fast linting, complements pyright)
lspconfig.ruff.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- C / C++ (clangd)
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--fallback-style=llvm",
    "--header-insertion=iwyu",
  },
}

-- Bash (bash-language-server)
lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}


-- JavaScript / TypeScript (tsserver)
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
