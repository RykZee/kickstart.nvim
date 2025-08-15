return {
  'christoomey/vim-tmux-navigator',
  lazy = false,
  -- Clear Kickstart’s own split-navigation maps so there’s only one source
  init = function()
    for _, key in ipairs { '<C-h>', '<C-j>', '<C-k>', '<C-l>', '<C-\\>' } do
      pcall(vim.keymap.del, 'n', key)
      pcall(vim.keymap.del, 't', key)
    end
  end,
}
