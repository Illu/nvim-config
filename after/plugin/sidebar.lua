local sidebar = require("sidebar-nvim")
local harpoon = require("harpoon")

local harpoon_marks = {
  title = "Harpoon Marks",
  icon = "⇁",
  draw = function()
    local marks = harpoon.get_mark_config().marks
    local keymaps = { "1 ", "2 ", "3 ", "4 " }
    local lines = {}
    for idx = 1, #marks do
      if idx > 4 then
        table.insert(lines, "  " .. marks[idx].filename)
      else
        table.insert(lines, keymaps[idx] .. marks[idx].filename)
      end
    end
    return {
      lines = lines,
    }
  end,
}

local opts = {
  disable_default_keybindings = 1,
  bindings = nil,
  open = true,
  side = "left",
  hide_statusline = true,
  update_interval = 1000,
  sections = { harpoon_marks, "diagnostics", "files" }
}

sidebar.setup(opts)
