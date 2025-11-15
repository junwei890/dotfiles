return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local tsconfig = require("nvim-treesitter.configs")
		tsconfig.setup({
			ensure_installed = { "lua", "c", "python" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
