return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',  -- 安装后自动更新解析器
  lazy = false,
  opts = {
    ensure_installed = {
      'lua',
      'c',
      'cpp',
      'rust',
      'python',
      'javascript',
      'typescript',
      'vim',
      'toml',
      'json',
      'gitignore',
      'yaml',
      'make',
      'cmake',
      'markdown',
      'markdown_inline',
      'bash',
    },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    },
  },
}
