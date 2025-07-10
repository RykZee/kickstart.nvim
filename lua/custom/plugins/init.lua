-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'saghen/blink.cmp',
    opts = function(_, opts)
      opts.keymap = vim.tbl_deep_extend('force', opts.keymap or {}, {
        -- use the built-in “enter” preset so <CR> confirms
        preset = 'enter',

        -- override the preset’s <Tab>/<S-Tab>
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
      })
    end,
  },
}
