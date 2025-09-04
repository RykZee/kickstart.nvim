return {
  {
    'windwp/nvim-ts-autotag',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('nvim-ts-autotag').setup {
        filetypes = {
          'html',
          'xml',
          'javascript',
          'typescript',
          'javascriptreact',
          'typescriptreact',
          'svelte',
          'vue',
          'tsx',
          'jsx',
          'rescript',
          'php',
          'heex',
          'eex',
          'elixir',
          'markdown',
          'astro',
        },
      }
    end,
  },
}
