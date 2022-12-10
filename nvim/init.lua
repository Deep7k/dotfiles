-- load plugins
require("bluknight.plugins-setup")
require("bluknight.core.options")
require("bluknight.core.keymaps")
require("bluknight.core.colorscheme")
require("bluknight.plugins.comment")
require("bluknight.plugins.nvim-tree")
require("bluknight.plugins.lualine")
require("bluknight.plugins.autopairs")
require("bluknight.plugins.gitsigns")

-- restore terminal cursor on exit
local cmd = vim.cmd
[[augroup RestoreCursorShapeOnExit
  autocmd!
  autocmd VimLeave * set guicursor=a:hor20
augroup END]]

