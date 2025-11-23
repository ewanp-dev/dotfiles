return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "medium", -- "hard" | "medium" | "soft"
				palette_overrides = {},
				transparent_mode = true,
			})

			-- Set LIGHT mode
			vim.o.background = "light"

			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
