require'nvim-treesitter.configs'.setup {
	ensure_installed = {"lua", "javascript", "c", "cpp"},

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	}
}
