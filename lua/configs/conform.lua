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
}

return options
