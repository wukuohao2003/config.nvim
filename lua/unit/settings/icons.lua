local status, icons = pcall(require, "nvim-web-devicons")
local M = {}

if not status then
	vim.notify("icon is not found ...")
	return false
end

function M.Config()
	icons.set_icon({
		c = { icon = "", color = "#c0fbfd", name = "c" },
		cpp = { icon = "", color = "#c0fbfd", name = "cpp" },
		py = { icon = "", color = "#f6f5bd", name = "py" },
		js = { icon = "", color = "#f6f5bd", name = "js" },
		ts = { icon = "", color = "#c0fbfd", name = "ts" },
		vue = { icon = "", color = "#bcfdde", name = "vue" },
		css = { icon = "", color = "#c0fbfd", name = "css" },
		html = { icon = "", color = "#dae0ff", name = "html" },
		lua = { icon = "", color = "#c0fbfd", name = "lua" },
		mov = { icon = "󰿎", color = "#dae0ff", name = "mov" },
		mp3 = { icon = "󰈣", color = "#dae0ff", name = "mp3" },
		mp4 = { icon = "󰁧", color = "#dae0ff", name = "mp4" },
		xls = { icon = "", color = "#bcfdde", name = "xls" },
		xlsx = { icon = "", color = "#bcfdde", name = "xlsx" },
		doc = { icon = "", color = "#c0fbfd", name = "doc" },
		docx = { icon = "", color = "#c0fbfd", name = "docx" },
		txt = { icon = "󱩼", color = "#dae0ff", name = "txt" },
		json = { icon = "󰘦", color = "#f6f5bd", name = "json" },
		md = { icon = "", color = "#dae0ff", name = "md" },
		csv = { icon = "", color = "#c0fbfd", name = "csv" },
		png = { icon = "󰸭", color = "#dae0ff", name = "csv" },
		jpeg = { icon = "󰈥", color = "#dae0ff", name = "csv" },
		jpg = { icon = "󰈥", color = "#dae0ff", name = "csv" },
		webp = { icon = "󰜫", color = "#dae0ff", name = "csv" },
		avif = { icon = "󰬈", color = "#dae0ff", name = "csv" },
		zip = { icon = "", color = "#dae0ff", name = "zip" },
		go = { icon = "", color = "#c0fbfd", name = "go" },
		xml = { icon = "", color = "#ffc0b6", name = "xml" },
		jade = { icon = "", color = "#dae0ff", name = "jade" },
		log = { icon = "󱂅", color = "#c0fbfd", name = "log" },
		scss = { icon = "", color = "#ffc0b6", name = "scss" },
		less = { icon = "", color = "#ffc0b6", name = "less" },
		snippets = { icon = "", color = "#dae0ff", name = "snippets" },
		gif = { icon = "󰵸", color = "#dae0ff", name = "gif" },
		sh = { icon = "", color = "#f6f5bd", name = "sh" },
		jsx = { icon = "", color = "#f6f5bd", name = "jsx" },
		tsx = { icon = "", color = "#c0fbfd", name = "tsx" },
		svg = { icon = "", color = "#dae0ff", name = "svg" },
		npmrc = { icon = "", color = "#c0fbfd", name = "npmrc" },
		yaml = { icon = "", color = "#ffc0b6", name = "yaml" },
		java = { icon = "󰬷", color = "#ffc06b", name = "java" },
		class = { icon = "", color = "#dae0ff", name = "class" },
		ttf = { icon = "", color = "#ffc0b6", name = "ttf" },
		dat = { icon = "󱎔", color = "#ffc0b6", name = "dat" },
		woff = { icon = "", color = "#ffc0b6", name = "woff" },
		mod = { icon = "󰕏", color = "#ffc0b6", name = "mod" },
		so = { icon = "", color = "#dae0ff", name = "so" },
		[".env"] = { icon = "", color = "#dae0ff", name = "env" },
		["favicon.ico"] = { icon = "󱞈", color = "#c0fbfd", name = "favicon" },
		["app.js"] = { icon = "", color = "#dae0ff", name = "app_js" },
		["App.js"] = { icon = "", color = "#dae0ff", name = "App_ts" },
		["init.lua"] = { icon = "", color = "#c0fbfd", name = "init" },
		["package.json"] = { icon = "", color = "#c0fbfd", name = "package" },
		["package.lua"] = { icon = "󱑢", color = "#dae0ff", name = "pkg_installer" },
		["commands.lua"] = { icon = "󰘳", color = "#dae0ff", name = "autocommands" },
		["settings.lua"] = { icon = "󰬎", color = "#dae0ff", name = "globalsettings" },
		["keymaps.lua"] = { icon = "󱕵", color = "#dae0ff", name = "keymaps" },
		["www"] = { icon = "󰇧", color = "#ffc06b", name = "network" },
		["LICENSE"] = { icon = "", color = "#dae0ff", name = "LICENSE" },
		[".gitignore"] = { icon = "", color = "#ffc0b6", name = "gitignore" },
	})
end

return M
