return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            variant = "moon",
            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },
            palette = {
                moon = {
		            _nc = "#665c54",
		            base = "#665c54",
		            surface = "#665c54",
		            overlay = "#665c54",
		            muted = "#6e6a86",
		            subtle = "#908caa",
		            text = "#f1dfda",
		            love = "#eb6f92",
		            gold = "#d3869b",
		            rose = "#ea9a97",
		            pine = "#ffb59e",
		            foam = "#9ccfd8",
		            iris = "#c4a7e7",
		            leaf = "#95b1ac",
		            highlight_low = "#2a283e",
		            highlight_med = "#44415a",
		            highlight_high = "#56526e",
		            none = "NONE",
	            },
            },

        })
        vim.cmd("colorscheme rose-pine")
    end
}
