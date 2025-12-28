vim.o.fileencoding = 'utf-8'   -- 保存文件使用 UTF-8
vim.o.wrap = false            -- 禁用自动折行，一行太长会横向滚动

vim.opt.cursorline = true      -- 启用当前行高亮
vim.opt.number = true          -- 显示行号
vim.opt.relativenumber = true  -- 显示相对行号

vim.o.mouse = 'a'              -- 启用鼠标支持

-- 使用系统剪贴板，需要系统支持，安装 xclip 包
vim.opt.clipboard = "unnamedplus"

-- 默认缩进规则
vim.o.tabstop = 4                   -- 一个 Tab 在显示上等于 4 个空格
vim.o.shiftwidth = 4                -- >> / << / 自动缩进 = 4 空格
vim.o.softtabstop = 4               -- 编辑时 <Tab> / <BS> 以 4 空格为单位
vim.o.expandtab = true              -- Tab 实际插入空格
vim.o.autoindent = true             -- 新行自动继承上一行缩进
vim.o.smartindent = true            -- 针对 {}、if、for 等结构智能缩进（其它插件接管）

--允许插入模式下，用 Backspace 正常工作（移除 vim 的某些老配置）
vim.o.backspace = 'indent,eol,start'

-- 禁止回车自动续注释，o/O 自动加注释
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove { "c", "r", "o" }
  end,
})

vim.o.ignorecase = true   -- 搜索默认忽略大小写
vim.o.smartcase = true    -- 如果搜索中包含大写 → 自动区分大小写

vim.o.scrolloff = 4       -- 光标上下，永远离窗口边缘至少 4 行
vim.o.sidescrolloff = 8   -- 光标左右，永远离窗口边缘至少 8 列

vim.o.splitbelow = true   -- :split → 新窗口在下方
vim.o.splitright = true   -- :vsplit → 新窗口在右侧

vim.o.cmdheight = 1   -- 命令行高度
vim.o.pumheight = 10  -- 补全弹窗最多显示 10 行

vim.o.undofile = false     -- 关闭文件再打开还能 u

-- 设置自定义缩进规则
local indent = {
  c   = 4,
  cpp = 2,
  lua = 2,
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = vim.tbl_keys(indent),
  callback = function()
    local w = indent[vim.bo.filetype]
    if not w then return end

    vim.opt_local.tabstop     = w
    vim.opt_local.shiftwidth  = w
    vim.opt_local.softtabstop = w
    vim.opt_local.expandtab   = true
  end,
})


