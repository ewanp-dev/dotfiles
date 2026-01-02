return {
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = false, -- load immediately
		priority = 1000, -- load before other UI plugins
		config = function()
			require("NeoSolarized").setup({
				style = "light", -- light theme
				transparent = true, -- tell the theme we want transparency
			})

			vim.cmd.colorscheme("NeoSolarized")

			-- Force transparency (important for LazyVim)
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
		end,
	},
}
