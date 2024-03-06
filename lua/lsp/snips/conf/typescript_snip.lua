local ls = require("luasnip")
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {
	ls.add_snippets("typescript", {
		ls.snippet(
			--
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
			"=>",
			fmt(
				[[
        () => {{{}}}
      ]],
				{
					ls.insert_node(1),
				}
			)
		),
		ls.snippet(
			"rnc",
			fmt(
				[[
        import {{ View }} from "react-native" 

        function {}() {{
          return <View></View>
        }}

        export default {}
      ]],
				{
					ls.insert_node(1),
					rep(1),
				}
			)
		),
	}),
}
