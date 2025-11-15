return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = { ensure_installed = { "lua_ls", "pylsp" } },
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.enable("lua_ls", { capabilities = capabilities })
			vim.lsp.enable("pylsp", { capabilities = capabilities })
		end,
	},
}
