-- 不包含插件的默认配置
require("config/options")
require("config/keymaps")

-- Setup lazy.nvim
require 'plugins/lazy'
require("lazy").setup {
  require 'plugins.colorschemes',
  require 'plugins.neotree',
  require 'plugins.bufferline',
  require 'plugins.lualine',


  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },

  -- automatically check for plugin updates
  checker = { enabled = false },
}

-- 使用了插件的配置
require("config/theme")

-- 
vim.keymap.set('n', '<leader>e', function()
  vim.cmd('Neotree toggle position=left')
end, { noremap = true, silent = true })

-- lualine will take that
vim.opt.showmode = false    -- 控制是否在左下角显示当前模式
vim.opt.ruler = false       -- 在右下角显示：行号/总行数/列号
vim.opt.showcmd = true     -- 正在输入、但还没完成的普通模式按键序列，如： d2w
