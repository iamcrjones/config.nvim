-- return {
--   'catppuccin/nvim',
--   name = 'catppuccin',
--   priority = 1000,
--   config = function()
--     require('catppuccin').setup {
--       flavour = 'frappe',
--       transparent_background = true,
--       integrations = {
--         aerial = true,
--         alpha = true,
--         cmp = true,
--         dashboard = true,
--         flash = true,
--         gitsigns = true,
--         headlines = true,
--         illuminate = true,
--         indent_blankline = { enabled = true },
--         leap = true,
--         lsp_trouble = true,
--         mason = true,
--         markdown = true,
--         mini = true,
--         native_lsp = {
--           enabled = true,
--           underlines = {
--             errors = { 'undercurl' },
--             hints = { 'undercurl' },
--             warnings = { 'undercurl' },
--             information = { 'undercurl' },
--           },
--         },
--         navic = { enabled = true, custom_bg = 'lualine' },
--         neotest = true,
--         neotree = true,
--         noice = true,
--         notify = true,
--         semantic_tokens = true,
--         telescope = true,
--         treesitter = true,
--         treesitter_context = true,
--         which_key = true,
--       },
--     }
--     vim.cmd.colorscheme 'catppuccin'
--   end,
-- }
-- return {
--   'AlexvZyl/nordic.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('nordic').setup {
--       -- This callback can be used to override the colors used in the base palette.
--       on_palette = function(palette) end,
--       -- This callback can be used to override the colors used in the extended palette.
--       after_palette = function(palette) end,
--       -- This callback can be used to override highlights before they are applied.
--       on_highlight = function(highlights, palette) end,
--       -- Enable bold keywords.
--       bold_keywords = false,
--       -- Enable italic comments.
--       italic_comments = true,
--       -- Enable editor background transparency.
--       transparent = {
--         -- Enable transparent background.
--         bg = true,
--         -- Enable transparent background for floating windows.
--         float = true,
--       },
--       -- Enable brighter float border.
--       bright_border = false,
--       -- Reduce the overall amount of blue in the theme (diverges from base Nord).
--       reduced_blue = true,
--       -- Swap the dark background with the normal one.
--       swap_backgrounds = false,
--       -- Cursorline options.  Also includes visual/selection.
--       cursorline = {
--         -- Bold font in cursorline.
--         bold = false,
--         -- Bold cursorline number.
--         bold_number = true,
--         -- Available styles: 'dark', 'light'.
--         theme = 'light',
--         -- Blending the cursorline bg with the buffer bg.
--         blend = 0.85,
--       },
--       noice = {
--         -- Available styles: `classic`, `flat`.
--         style = 'classic',
--       },
--       telescope = {
--         -- Available styles: `classic`, `flat`.
--         style = 'classic',
--       },
--       leap = {
--         -- Dims the backdrop when using leap.
--         dim_backdrop = false,
--       },
--       ts_context = {
--         -- Enables dark background for treesitter-context window
--         dark_background = false,
--       },
--     }
--     vim.cmd.colorscheme 'nordic'
--   end,
-- }
return {
  'rebelot/kanagawa.nvim',
  config = function()
    require('kanagawa').setup {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = 'dragon', -- Load "wave" theme
      background = { -- map the value of 'background' option to a theme
        dark = 'dragon', -- try "dragon" !
        light = 'lotus',
      },
    }

    -- setup must be called before loading
    vim.cmd 'colorscheme kanagawa'
  end,
}
