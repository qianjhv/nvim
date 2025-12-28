-- 设置 leader 键
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- 普通模式下禁用方向键
vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Down>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Left>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true })

-- 插入模式下禁用方向键。
vim.keymap.set('i', '<Up>', '<Nop>', { noremap = true })
vim.keymap.set('i', '<Down>', '<Nop>', { noremap = true })
vim.keymap.set('i', '<Left>', '<Nop>', { noremap = true })
vim.keymap.set('i', '<Right>', '<Nop>', { noremap = true })

-- 禁用普通模式可视模式下的空格行为
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- 默认值
local opts = { noremap = true, silent = true }

-- 普通模式下 Ctrl + s 执行保存命令 :w
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- 普通模式下 Leader + s + n 保存文件但不触发任何自动命令
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- 普通模式下 Ctrl + q 执行退出命令 :q
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- 普通模式下的 x 键删除字符但不复制到寄存器
vim.keymap.set('n', 'x', '"_x', opts)

-- 向下滚动半页后居中显示当前行
-- 向上滚动半页后居中显示当前行
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- 查找时保持匹配项居中
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Tab 键切换到下一个缓冲区
-- Shift + Tab 切换到上一个缓冲区
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)

-- 删除 buffer

-- 新建 buffer

-- 窗口分割

-- 窗口导航
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Leader + x + s 关闭窗口
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

-- Leader + t + o 新建 tab
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)

-- Leader + t + x 关闭当前 tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)

-- Leader + t + n 切换到下一个标签页
-- Leader + t + p 切换到上一个标签页
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) -- go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) -- go to previous tab

