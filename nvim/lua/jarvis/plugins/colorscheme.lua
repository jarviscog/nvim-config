-- Themes
--{"sainnhe/everforest"},
-- Check out this one later: https://github.com/catppuccin/nvim
return {
  "sainnhe/gruvbox-material", 
  priority = 1000,
  lazy = false, -- Don't lazy load
  config = function()
    vim.g.gruvbox_material_background = 'soft' -- 'hard', 'medium', or 'soft'
    vim.g.gruvbox_material_foreground = 'original' -- 'material', 'mix', or 'original'
    vim.cmd([[colorscheme gruvbox-material]])
  end,
}

