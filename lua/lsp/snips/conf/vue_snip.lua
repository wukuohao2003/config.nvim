local ls = require("luasnip")
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("vue", {
	ls.snippet(
		--
		"tmps",
		fmt(
			[[
        <template></template>
      ]],
			{}
		)
	),
})
