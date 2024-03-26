local ls = require("luasnip")
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("vue", {
	ls.snippet(
		--
		"sts",
		fmt(
			[[
        <script></script

        <template>
          <div>{}</div
        </template>

        <style lang="scss" scoped></style>
      ]],
			{
				ls.insert_node(1),
			}
		)
	),
})
