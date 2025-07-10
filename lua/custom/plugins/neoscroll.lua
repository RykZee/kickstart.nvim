return {
  'karb94/neoscroll.nvim',
  config = function()
    require('neoscroll').setup {
      easing_function = 'quadratic',
      hide_cursor = false,
      stop_eof = true,
      respect_scrolloff = true,
      cursor_scrolls_alone = true,
    }

    local t = {}
    local neoscroll = require 'neoscroll'

    t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '250' } }
    t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '250' } }
    t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '150' } }
    t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '150' } }

    neoscroll.set_mappings(t)
  end,
}
