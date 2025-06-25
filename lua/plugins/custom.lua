-- ~/.config/nvim/lua/plugins/custom.lua
-- Simple customizations on top of LazyVim extras

return {
  -- Enhanced Tailwind CSS class detection for Vue
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  -- Vue template classes
                  { "class\\s*=\\s*[\"']([^\"']*)[\"']", 1 },
                  -- Vue :class bindings
                  { ":class\\s*=\\s*[\"']([^\"']*)[\"']", 1 },
                },
              },
            },
          },
        },
      },
    },
  },

  -- Mason ensure some tools are installed
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "eslint_d",
        "stylua",
      },
    },
  },

  -- Optional: Auto-closing tags for Vue
  {
    "windwp/nvim-ts-autotag",
    opts = {
      opts = {
        enable_close = true,
        enable_rename = true,
      },
      per_filetype = {
        ["vue"] = {
          enable_close = true,
          enable_rename = true,
        },
      },
    },
  },
}
