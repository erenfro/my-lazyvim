-- Toggle autocomplete vs. <C-SPACE> complete
return {
  -- disable autocomplete if vim.g.cmp_disable is true
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      require("cmp").setup({
        completion = { autocomplete = not vim.g.autocomplete_disable },
      })
    end,
  },
}
