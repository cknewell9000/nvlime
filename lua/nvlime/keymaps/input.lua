local km = require("nvlime.keymaps")
local im = km.mappings.input
local km_window = require("nvlime.window.keymaps")
local nvim_win_close = vim.api.nvim_win_close
local nvim_win_get_cursor = vim.api.nvim_win_get_cursor
local input = {}
input.add = function()
  km.buffer.normal(im.normal.complete, "<Cmd>call nvlime#ui#input#FromBufferComplete()<CR>", "nvlime: Complete the input")
  local function _1_()
    return km_window.toggle()
  end
  km.buffer.insert(im.insert.keymaps_help, _1_, "Show keymaps help")
  km.buffer.insert(im.insert.complete, "<Cmd>call nvlime#ui#input#FromBufferComplete()<CR>", "nvlime: Complete the input")
  km.buffer.insert(im.insert.next_history, "<Cmd>call nvlime#ui#input#NextHistoryItem()<CR>", "nvlime: Show the next item in input history")
  return km.buffer.insert(im.insert.prev_history, "<Cmd>call nvlime#ui#input#NextHistoryItem(v:false)<CR>", "nvlime: Show the previous item in input history")
end
return input