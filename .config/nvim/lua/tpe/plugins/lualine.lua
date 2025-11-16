return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		local colors = {
			fg1 = "#171717",
			color2 = "#171717",
			fg2 = "#e9e9e9",
			color3 = "#32302f",
			color4 = "#e9e9e9",
			color5 = "#749e94",
			color6 = "#749e94",
			color7 = "#dec7fc",
			color8 = "#d3869b",
			color9 = "#fa9292",
		}

		local my_lualine_theme = {
			normal = {
				a = { fg = colors.fg1, bg = colors.color4, gui = "bold" },
				b = { fg = colors.fg2, bg = colors.color2 },
				c = { fg = colors.fg2, bg = colors.color3 },
			},
			command = { a = { fg = colors.fg1, bg = colors.color5, gui = "bold" } },
			inactive = { a = { fg = colors.fg2, bg = colors.color2 } },
			insert = { a = { fg = colors.fg1, bg = colors.color6, gui = "bold" } },
			replace = { a = { fg = colors.fg1, bg = colors.color7, gui = "bold" } },
			terminal = { a = { fg = colors.fg1, bg = colors.color8, gui = "bold" } },
			visual = { a = { fg = colors.fg1, bg = colors.color9, gui = "bold" } },
		}

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = my_lualine_theme,
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#dec7fc" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
