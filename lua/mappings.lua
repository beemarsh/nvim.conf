require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Quit
map("n", "<leader>qq", "<cmd>qa<cr>", {desc = "Quit all"})

-- ALT+f triggers manual formatting
map({ "n", "v", "i" }, "<M-f>", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "LSP Format (via LSP)" })

-- LSP Keymaps (now centralized here)
  map('n', 'gd', vim.lsp.buf.definition, {desc = 'Go to Definition'})
  map('n', 'gD', vim.lsp.buf.declaration, {desc = 'Go to Declaration'})
  map('n', 'gr', vim.lsp.buf.references, {desc = 'Go to References'})
  map('n', 'gi', vim.lsp.buf.implementation, {desc = 'Go to Implementation'})

  map('n', 'K', vim.lsp.buf.hover, {desc = 'Hover Documentation'})

  -- map('n', '<leader>ls', vim.lsp.buf.signature_help, {desc = 'Signature Help'})
  -- map('n', '<leader>lt', vim.lsp.buf.type_definition, {desc = 'Type Definition'})
  -- map('n', '<leader>lr', vim.lsp.buf.rename, {desc = 'Rename'})
  -- map('n', '<leader>la', vim.lsp.buf.code_action, {desc = 'Code Actions'})

  -- Diagnostics mappings
map('n', '[d', function() vim.diagnostic.jump({ count = -1, float=true }) end, {desc = 'Previous Diagnostic'})
map('n', ']d', function() vim.diagnostic.jump({ count = 1, float=true }) end, {desc = 'Next Diagnostic'})
-- map('n', '<leader>od', vim.diagnostic.open_float, {desc = 'Show Line Diagnostics'})

-- Your Trouble keybindings in the 'map' function format:
map('n', '<C-o>D', '<cmd>Trouble diagnostics toggle<cr>', { desc = "Diagnostics (Trouble)" })
map('n', '<C-o>d', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { desc = "Buffer Diagnostics (Trouble)" })
-- map('n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>', { desc = "Symbols (Trouble)" })
-- map('n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', { desc = "LSP Definitions / references / ... (Trouble)" })
-- map('n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>', { desc = "Location List (Trouble)" })
-- map('n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', { desc = "Quickfix List (Trouble)" })
--

-- Terminal Mappings
map({ "n", "t" }, "<M-Enter>", function()
  require("nvchad.term").toggle {
    pos = "float", -- This makes it a floating window
    size = 0.9,    -- Adjust size (e.g., 60% of screen width/height)
    width = 1,   -- You can specify width/height directly or via size
    height = 1,
    -- You can add an 'id' if you want to manage multiple floating terminals
    -- id = "my_floating_term",
  }
end, { desc = "Toggle Floating Terminal (Ctrl+Enter)" })

