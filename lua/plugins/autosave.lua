return {
  {
    "Pocco81/auto-save.nvim",
    event = "VeryLazy",
    opts = {
      enabled = true,
      execution_message = { -- Теперь это таблица!
        message = function()
          return "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")
        end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
      events = { "InsertLeave", "TextChanged", "CursorHold" },
      conditions = {
        exists = true,
        filetype_is_not = { "alpha", "neo-tree", "TelescopePrompt" },
        modifiable = true,
      },
      write_all_buffers = false,
    },
  },
}
