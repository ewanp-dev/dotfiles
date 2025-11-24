return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = true,
			-- integrations = {
			--     cmp = true,
			--     treesitter = true,
			--     telescope = true,
			--     gitsigns = true,
			--     which_key = true,
			--     notify = true,
			--     mini = true,
			--     lsp_trouble = true,
			-- },
		})

		-- Set the colorscheme
		vim.cmd.colorscheme("catppuccin")
	end,
}
