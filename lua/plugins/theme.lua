-- lua/plugins/colortheme.lua
return {
  'Mofiqul/vscode.nvim',
  config = function()
    -- Set the background (dark or light)
    vim.o.background = 'dark' -- or 'light' for light mode

    -- Get color configuration from the theme
    local c = require('vscode.colors').get_colors()

    -- Setup the theme
    require('vscode').setup {
      transparent = true, -- Enable transparent background
      italic_comments = true, -- Enable italic comments
      underline_links = true, -- Underline links
      disable_nvimtree_bg = true, -- Disable nvim-tree background
      color_overrides = {
        vscLineNumber = '#FFFFFF', -- Customize line number color
      },
      group_overrides = {
        Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
      },
    }

    -- Load the theme
    vim.cmd 'colorscheme vscode'
  end,
}
