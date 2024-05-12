return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            variant = "auto",
            dark_variant = "moon"
	})

        vim.cmd("colorscheme rose-pine")

        vim.keymap.set("n", "<leader>kt", function ()
            if vim.o.background == "dark" then
                vim.o.background = "light"
            else
                vim.o.background = "dark"
            end
        end, { desc = "Toggle light/dark" })
    end
}
