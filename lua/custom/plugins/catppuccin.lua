return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    lazy = false,

    config = function()
      -- make sure the compile dir exists & is writable
      local compile_dir = vim.fn.stdpath 'state' .. '/catppuccin'
      vim.fn.mkdir(compile_dir, 'p')

      ---@diagnostic disable: missing-fields   -- quiet LuaLS "required fields" noise
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = false,

        -- This table is new in recent Catppuccin; including it silences LuaLS complaints.
        float = { transparent = false, solid = false }, -- defaults per docs

        -- optional: integrations; turn on what you use
        integrations = {
          treesitter = true,
          gitsigns = true,
          nvimtree = false,
          neo_tree = true,
          telescope = true,
          which_key = true,
          indent_blankline = { enabled = true },
          native_lsp = {
            enabled = true,
            virtual_text = { errors = { 'italic' }, hints = { 'italic' }, warnings = { 'italic' }, information = { 'italic' } },
            underlines = { errors = { 'underline' }, hints = { 'underline' }, warnings = { 'underline' }, information = { 'underline' } },
            inlay_hints = { background = true },
          },
        },

        -- put compiled cache in a path we just ensured exists
        compile_path = compile_dir,
      }

      -- precompile once to avoid "could not load cache"
      pcall(function()
        require('catppuccin').compile()
      end)

      -- vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
