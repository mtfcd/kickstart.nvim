return {
  "nvim-tree/nvim-tree.lua",
  -- cmd = "NvimTreeToggle",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  },
  config = function()
    require('nvim-tree').setup {
      tab = {
        sync = {
          open = true
        }
      }
    }
  end,
}
