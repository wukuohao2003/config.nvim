local ls = require("luasnip")

return {
	ls.add_snippets("lua", {
		ls.snippet("pr", {
			ls.text_node("local status, "),
			ls.insert_node(1),
			ls.text_node(" = pcall(require , '"),
			ls.insert_node(2),
			ls.text_node("')"),
		}),
	}),
}
