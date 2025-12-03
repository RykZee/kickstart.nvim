return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local startify = require 'alpha.themes.startify'

    startify.section.header.val = {
      '                                                     ',
      '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      '                                                     ',
    }

    startify.section.top_buttons.val = {
      startify.button('w', '󰁯  Workspace', '<cmd>AutoSession restore<CR>'),
      startify.button('e', '  New File', '<cmd>ene <BAR> startinsert <CR>'),
      startify.button('f', '󰱼  Find File', '<cmd>Telescope find_files<CR>'),
      startify.button('t', '󱎸  Find Text', '<cmd>Telescope live_grep<CR>'),
      startify.button('r', '  Recent', '<cmd>Telescope oldfiles<CR>'),
      startify.button('q', '  Quit', '<cmd>qa<CR>'),
    }

    startify.section.bottom_buttons = {}
    startify.section.mru.val = {}
    -- startify.section.mru_cwd.val = {}

    startify.config.layout[1].val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) }
    startify.config.opts.margin = vim.fn.max { 2, vim.fn.floor(vim.fn.winwidth(0) * 0.35) }

    alpha.setup(startify.config)
  end,
}
