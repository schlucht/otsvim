require'nvim-treesitter.configs'.setup{
	ensure_installed = {'go','lua','javascript', 'css', 'html'},
	sync_install = false,
	auto_install = true,
	highlight = {
		enabled = true,
	},
}
