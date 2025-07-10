return {
  'karb94/neoscroll.nvim',
  config = function()
    local neoscroll = require 'neoscroll'

    neoscroll.setup {
      easing_function = 'quitic',
      hide_cursor = false,
      stop_eof = true,
      respect_scrolloff = true,
      cursor_scrolls_alone = true,
    }

    neoscroll.ctrl_f { move_cursor = true, duration = 250, easing = 'quadratic' }
    neoscroll.ctrl_b { tmove_cursor = true, duration = 5 }
    neoscroll.ctrl_d { tmove_cursor = true, duration = 5 }
    neoscroll.ctrl_u { tmove_cursor = true, duration = 5 }
  end,
}
