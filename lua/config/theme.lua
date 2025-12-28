-- 
vim.cmd.colorscheme "catppuccin"

-- Neo-tree 在 catppuccin 主题开启透明时，字体与背景对比颜色过淡
vim.api.nvim_set_hl(0, "NeoTreeFileStatsHeader", {
  fg = "#97afdb",
  bold = true,
})

vim.api.nvim_set_hl(0, "NeoTreeFileStats", {
  fg = "#9d9fa3",
  italic = true,
})
