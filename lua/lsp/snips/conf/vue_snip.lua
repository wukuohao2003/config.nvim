local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("vue", {
	ls.snippet(
		--
		"setup",
		fmt(
			[[
        <script setup>
          {}
        </script>

        <template>
          <div class="{}">{}</div>
        </template>

        <style lang="scss" scoped>
          {}
        </style>
      ]],
			{
				ls.insert_node(1),
				ls.insert_node(2),
				ls.insert_node(3),
				ls.insert_node(4),
			}
		)
	),
})
