require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- ALT+f triggers manual formatting
map({ "n", "v", "i" }, "<M-f>", function()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format current buffer (conform)" })
