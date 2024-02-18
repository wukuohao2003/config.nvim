local ls = require("luasnip")
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {
	ls.add_snippets("javascript", {
		ls.snippet(
			"log",
			fmt(
				[[
        console.log({})
      ]],
				{
					ls.insert_node(1),
				}
			)
		),
		ls.snippet(
			"rfc",
			fmt(
				[[
      import React from "react"

      export default function {} {{
        {}
      }}
    ]],
				{
					ls.insert_node(1),
					ls.insert_node(2),
				}
			)
		),
	}),
}
