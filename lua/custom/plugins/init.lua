-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    -- set lualine as statusline
    'nvim-lualine/lualine.nvim',
    lazy = false,
    -- see `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_c = {
          {
            'filename',
            path = 1,
          },
        },
      },
    },
  },
  {
    'rrethy/vim-illuminate',
    event = { 'bufreadpost', 'bufnewfile' },
    config = function()
      vim.keymap.set('n', ']]', function()
        require('illuminate').goto_next_reference(true)
      end, { desc = 'next reference', noremap = true })
      vim.keymap.set('n', '[[', function()
        require('illuminate').goto_prev_reference(true)
      end, { desc = 'prev reference', noremap = true })
    end,
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'bufadd',
    config = function()
      require('bufferline').setup()
    end,
  },
  {
    'rest-nvim/rest.nvim',
    version = 'v3.*',
    ft = 'http',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      vim.g.rest_nvim = {
        result_split_horizontal = true,
        result = {
          show_curl_command = false,
          formatters = {
            html = 'bat',
          },
        },
      }
      vim.keymap.set('n', '<leader>rr', '<cmd>Rest run<CR>', { desc = 'Run rest command' })
      vim.keymap.set('n', '<leader>ry', '<cmd>Rest run last<CR>', { desc = 'Run last rest command' })
    end,
  },
  {
    'kylechui/nvim-surround',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  'LunarVim/bigfile.nvim',
}
