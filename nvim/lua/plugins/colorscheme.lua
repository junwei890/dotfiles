return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			theme = "dragon",
			transparent = true,
		})
		vim.cmd("colorscheme kanagawa")
	end,
}
