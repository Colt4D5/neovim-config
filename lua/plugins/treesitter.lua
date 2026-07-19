-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "c_sharp",
      "json",
      "lua",
      "sql",
      "vim",
      "xml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
