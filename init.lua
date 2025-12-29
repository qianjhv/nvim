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
  require 'plugins.treesitter',
  require 'plugins.telescope',


  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },

  -- automatically check for plugin updates
  checker = { enabled = false },
}

-- 主题配置，以及插件 UI 的一些颜色控制
require("config/themewithplugin")

-- 使用了插件的快捷键设置（或者说插件的快捷键设置）
require("config/keymapswithplugin")
