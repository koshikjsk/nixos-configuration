return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nixd = {
          mason = false,
          settings = {
            nixd = {
              formatting = { command = { "nixfmt" } },
            },
          },
        },
        lua_ls = {
          mason = false,
        },
      },
    },
  },
}
