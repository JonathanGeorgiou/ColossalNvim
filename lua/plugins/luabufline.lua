return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = "catppuccin",
        }
      }
    end
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup({
        options = {
          diagnostics = "nvim_lsp",
          always_show_bufferline = false,
          offsets = {
            {
              filetype = "neo-tree",
              text = "Neo-tree",
              highlight = "Directory",
              text_align = "left",
            },
          },
        }
      })
    end,
    vim.keymap.set("n", "<C-.>", ":bn<CR>", {}),
    vim.keymap.set("n", "<C-,>", ":bn<CR>", {})
  },

}
