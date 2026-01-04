return {
	"kdheepak/monochrome.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme monochrome")
		vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
	end,
}
