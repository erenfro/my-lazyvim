-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local cmp = require("cmp")
LazyVim.toggle.map(
  "<leader>ua",
  LazyVim.toggle.wrap({
    name = "Autocomplete",
    get = function()
      return cmp.get_config().completion.autocomplete == false
    end,
    set = function(state)
      if state then
        cmp.setup({ completion = { autocomplete = false } })
      else
        cmp.setup({ completion = { autocomplete = { cmp.TriggerEvent.TextChanged } } })
      end
    end,
  })
)
