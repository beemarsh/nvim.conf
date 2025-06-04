# 🚀 My Customized Neovim Configuration (Based on NvChad)

This repository houses my personal Neovim configuration, built upon [NvChad starter](https://github.com/NvChad/starter) framework. It's tailored for working with:

* **Python**
* **Lua**
* **JavaScript/TypeScript (Node.js)**
* **C/C++**
* **CMake**
* **JSON/YAML/Markdown**

---

## 💻 Current Setup Information

* **Neovim Version:** NVIM v0.11.2 (Build type: Release, LuaJIT 2.1.1741730670)
* **Operating System:** Ubuntu 24.04.2 LTS (Kernel: 6.11.0-26-generic)

---

## 🛠️ Code Formatters

This config uses `conform.nvim` for code formatting. Formatters are triggered manually on pressing Alt + f.

### Configured Formatters

| Language/Filetype           | Formatter(s) Used                                 |
| :-------------------------- | :------------------------------------------------ |
| **Python** | `black`                                           |
| **Lua** | `stylua`                                          |
| **JavaScript/TypeScript** | `prettier`, `biome` (fallback)                    |
| **C/C++/Objective-C** | `clang-format`                                    | 
| **JSON/YAML/Markdown/CSS/HTML** | `prettier`, `biome` (fallback)                    |

### Installing Formatters

Most formatters can be installed easily using **`Mason.nvim`** directly within Neovim.

1.  **Open Neovim:** `nvim`
2.  **Open Mason:** Type `:Mason` and press Enter.
3.  **Search and Install:** Find the formatters listed above (e.g., `black`, `stylua`, `prettier`, `biome`, `clang-format`) and press `i` to install them.

### Triggering Formatters

* **Manual Formatting:** Press **`<Alt-f>`** (or `<M-f>`) in Normal, Visual, or Insert mode to format the current buffer.
* **Automatic Formatting on Save:** This is **disabled by default**. To re-enable it, uncomment the `format_on_save` block in `lua/configs/conform.lua`.

---

## 🤝 Credits

* **[NvChad](https://github.com/NvChad/NvChad)**: The core Neovim framework this configuration is built upon.
* **[NvChad starter](https://github.com/NvChad/starter)**: The foundation repository for this configuration.
* **[LazyVim](https://github.com/LazyVim/LazyVim)**: A pioneering Neovim distribution that inspired many modern Neovim configurations.
* **[lazy.nvim](https://github.com/folke/lazy.nvim)**: The fantastic plugin manager.
* **[conform.nvim](https://github.com/stevearc/conform.nvim)**: The plugin used for code formatting.
* **[Mason.nvim](https://github.com/williamboman/mason.nvim)**: The essential plugin for managing LSP servers, formatters, and debuggers.
