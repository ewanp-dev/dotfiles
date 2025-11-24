return {
	"folke/noice.nvim",
	opts = function()
		local hl = vim.api.nvim_set_hl
		hl(0, "NormalFloat", { bg = "none" })
		hl(0, "FloatBorder", { bg = "none" })
		hl(0, "Pmenu", { bg = "none" })
		hl(0, "PmenuSbar", { bg = "none" })
		hl(0, "PmenuThumb", { bg = "none" })
	end,
}
