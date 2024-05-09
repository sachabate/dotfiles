return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function ()
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
    opts = {
        -- Leave this table empty to use the default conifg.
    }
}
