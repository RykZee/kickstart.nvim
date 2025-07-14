return {
  'karb94/neoscroll.nvim',
  config = function()
    local neoscroll = require 'neoscroll'

    neoscroll.setup {
      easing = 'cubic',
      hide_cursor = false,
      stop_eof = true,
      respect_scrolloff = true,
      cursor_scrolls_alone = true,
    }

    local keymap = {
      ['<C-f>'] = function()
        neoscroll.ctrl_f { duration = 200, move_cursor = false }
      end,
      ['<C-b>'] = function()
        neoscroll.ctrl_b { duration = 200, move_cursor = false }
      end,
      ['<C-d>'] = function()
        neoscroll.ctrl_d { duration = 200, move_cursor = false }
      end,
      ['<C-u>'] = function()
        neoscroll.ctrl_u { duration = 200, move_cursor = false }
      end,
    }

    local modes = { 'n', 'v', 'x' }
    for lhs, rhs in pairs(keymap) do
      vim.keymap.set(modes, lhs, rhs, { silent = true })
    end
    -- neoscroll.ctrl_f { move_cursor = true, duration = 250, easing = 'quadratic' }
    -- neoscroll.ctrl_b { tmove_cursor = true, duration = 5 }
    -- neoscroll.ctrl_d { tmove_cursor = true, duration = 5 }
    -- neoscroll.ctrl_u { tmove_cursor = true, duration = 5 }
  end,
}
