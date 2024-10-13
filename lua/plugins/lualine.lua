-- lua/plugins/lualine.lua
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'vscode', -- Use the vscode theme
        -- Other lualine settings...
      },
    }
  end,
}
