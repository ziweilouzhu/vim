local leet_arg = "leetcode.nvim"

return {
	"kawre/leetcode.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	lazy = leet_arg ~= vim.fn.argv()[1],
	opts = {
		arg = leet_arg,
		---@type lc.lang
		lang = "cpp",

		cn = { -- leetcode.cn
		enabled = true, ---@type boolean
		translator = true, ---@type boolean
		translate_problems = true, ---@type boolean
	},

	injector = { ---@type table<lc.lang, lc.inject>
	["cpp"] = {
		before = { "#include <bits/stdc++.h>", "using namespace std;" },
		after = "int main() {}",
	},
	["java"] = {
		before = "import java.util.*;",
	},
},

---@type string
directory = vim.fn.stdpath("data") .. "/leetcode/",

---@type boolean
logging = true,

cache = {
	update_interval = 60 * 60 * 24 * 7, ---@type integer 7 days
},

console = {
	open_on_runcode = true, ---@type boolean

	dir = "row", ---@type lc.direction

	size = { ---@type lc.size
	width = "90%",
	height = "75%",
},

result = {
	size = "60%", ---@type lc.size
},

testcase = {
	virt_text = true, ---@type boolean

	size = "40%", ---@type lc.size
},
		},

		description = {
			position = "left", ---@type lc.position

			width = "40%", ---@type lc.size

			show_stats = true, ---@type boolean
		},

		hooks = {
			---@type fun()[]
			LeetEnter = {},

			---@type fun(question: { lang: string })[]
			LeetQuestionNew = {},
		},

		---@type boolean
		image_support = false, -- setting this to `true` will disable question description wrap

		keys = {
			toggle = { "q", "<Esc>" }, ---@type string|string[]
			confirm = { "<CR>" }, ---@type string|string[]

			reset_testcases = "r", ---@type string
			use_testcase = "U", ---@type string
			focus_testcases = "H", ---@type string
			focus_result = "L", ---@type string
		},

	},
}
