local ls = require("luasnip")

return {
	ls.add_snippets("javascript", {
		ls.snippet("log", {
			ls.text_node("console.log("),
			ls.insert_node(1),
			ls.text_node(")"),
		}),
	}),
}
