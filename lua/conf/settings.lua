local M = {}

function M.Config()
	local option = vim.opt
	local global = vim.g
	local command = vim.cmd
	local color = "tundra"
	local tabWidth = 2

	-- color scheme
	command(string.format("colorscheme %s", color))

	-- 快捷键
	global.mapleader = " "

	-- 设置鼠标
	global.mouse = "nv"

	-- 自动缩进
	option.autoindent = true

	-- 行号
	option.relativenumber = true
	option.number = true
	option.numberwidth = 4

	-- 缩进
	option.tabstop = tabWidth
	option.shiftwidth = tabWidth
	option.expandtab = true
	option.autoindent = true
	option.smartindent = true

	-- 系统剪切板
	option.clipboard = "unnamedplus"

	-- 显示当前行
	option.cursorline = true

	-- 始终在右边打开文件
	option.splitbelow = true
	option.splitright = true

	-- 弹出确认保存退出
	option.confirm = false

	-- 不创建备份文件
	option.backup = false
	option.writebackup = false

	-- 屏幕刷新时间间隔
	option.updatetime = 1000

	-- 侧边栏空白
	option.signcolumn = "yes"

	-- 补全UI大小
	option.pumheight = 20
	option.pumwidth = 10

	-- 自动加载配置文件
	option.autoread = true

	-- 模式
	option.showmode = false
end

return M
