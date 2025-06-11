-- use native clangd binary
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false,
        },
      },
    },
  },
  -- { "williamboman/mason.nvim", opts = { PATH = "append", }, },
}
