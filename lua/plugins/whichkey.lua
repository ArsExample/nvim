local wk = require("which-key")

wk.add({
	 { "<leader>f", group = "Find" },
	 { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
	 { "<leader>fb", "<cmd>Telescope find_buffer<cr>", desc = "Find buffer", mode = "n" },
	 { "<leader>fw", "<cmd>Telescope find_text<cr>", desc = "Find text", mode = "n" },

	 { "<leader>l", group = "Lsp" },
	 { "<leader>ld", desc = "Open diagnostics", mode = "n" },


	 { "<leader>t", group = "Terminal" },
	 { "<leader>tf", desc = "Open floating terminal", mode = "n" },
	 { "<leader>th", desc = "Open horizontal terminal", mode = "n" },
	 { "<leader>tv", desc = "Open vertical terminal", mode = "n" },
})
