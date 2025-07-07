local options = {}

return {
  {
    'mrcjkb/rustaceanvim',
    ft = 'rust',
    dependencies = {
      'mfussenegger/nvim-dap',
    },
    config = function()
      vim.g.rustaceanvim = options
      vim.g.no_rust_maps = 1
    end,
  },
  {
    'saecki/crates.nvim',
    ft = { 'rust', 'toml' },
    config = function(_, opts)
      local crates = require 'crates'
      crates.setup(opts)
      crates.show()
    end,
  },
}
