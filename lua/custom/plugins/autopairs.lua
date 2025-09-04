-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {
    check_ts = true, -- use Treesitter context
    enable_check_bracket_line = true, -- don't add a pair if one exists on the same line
    enable_afterquote = true, -- add pairs even after a quote
    disable_filetype = { 'TelescopePrompt' },

    fast_wrap = {
      map = '<M-e>', -- Alt+e (Option+e on Mac)
      chars = { '{', '[', '(', '"', "'", '`' },
      pattern = [=[[%'%"%>%]%)%}%,]]=],
      end_key = '$',
      keys = 'qwertyuiopasdfghjklzxcvbnm',
      manual_position = true,
      highlight = 'Search',
      highlight_grey = 'Comment',
    },
  },

  config = function(_, opts)
    require('nvim-autopairs').setup(opts)

    -- If you also use nvim-cmp, hook into confirm_done so functions get () automatically
    local ok_cmp, cmp = pcall(require, 'cmp')
    if ok_cmp then
      local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end
  end,
}
