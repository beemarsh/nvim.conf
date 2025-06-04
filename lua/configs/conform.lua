local options = {
  lazy = false,
  formatters_by_ft = {
      -- Python
      python = { "black" },
      -- Lua
      lua = { "stylua" },

      -- Node.js / JavaScript / JSON (using prettier as primary, biome as fallback)
      javascript = { "prettier", "biome" },
      typescript = { "prettier", "biome" },
      javascriptreact = { "prettier", "biome" },
      typescriptreact = { "prettier", "biome" },
      css = { "prettier", "biome" },
      html = { "prettier", "biome" },
      json = { "prettier", "biome" },
      yaml = { "prettier", "biome" },
      markdown = { "prettier", "biome" },

      -- C / C++ / Objective-C
      c = { "clang-format" },
      cpp = { "clang-format" },
      objc = { "clang-format" },
      objcpp = { "clang-format" },

  },
 format_on_save = {
      timeout_ms = 500,  -- Maximum time to wait for a formatter to finish
      lsp_fallback = true, -- Use LSP formatting if no conform formatter is found
      async = false, -- Run synchronously on save, so it doesn't leave undo history changes behind
      -- Note: async = true is generally better for responsiveness, but can sometimes cause
      -- small undo history quirks. Test and see what you prefer.
    },
}

return options
