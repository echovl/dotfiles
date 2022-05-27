return function()
	local Rule = require("nvim-autopairs.rule")
	local npairs = require("nvim-autopairs")
	local cond = require("nvim-autopairs.conds")

	npairs.setup({})

	npairs.add_rules({
		Rule("<", ">", { "typescript" }):with_pair(cond.not_before_regex("[%s<]")):with_cr(cond.none()),
	})
end
