return {
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim",
		},
		keys = {
			{ "<leader>b",  "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>",                     desc = "Help tags" },
			{ "<leader>tb", "<cmd>Telescope git_branches<CR>",                  desc = "Git git_branches" },
			{ "<C-e>",      ":Telescope lsp_dynamic_workspace_symbols<CR>",     desc = "jumping between project" },
			{ "<Leader>p",  ":Telescope find_files<CR>",                        {} },
			-- { "<Leader>rs", ":Telescope resume<CR>",                            {} },
			{ "<Leader>o",  ":Telescope lsp_document_symbols<CR>",              {} },
			{ "<Leader>P",  ":Telescope live_grep<CR>",                         {} },
		},
	}
}
