return {
	"slugbyte/lackluster.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		require("lackluster").setup({
			tweak_syntax = {
				string = require("lackluster").color.luster,
				type = "#749e94",
			},

			tweak_background = {
				normal = "none",
			},
		})
		-- vim.cmd.colorscheme("lackluster")
		vim.cmd.colorscheme("lackluster-hack") -- my favorite
		-- vim.cmd.colorscheme("lackluster-mint")
	end,
}
