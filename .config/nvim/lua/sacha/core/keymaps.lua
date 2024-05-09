local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open directory" })

keymap.set("i", "<C-o>", "<Esc>o", { desc = "New line below" })
keymap.set("i", "<C-S-O>", "<Esc>O", { desc = "New line above" })

keymap.set({"i", "n"}, "<C-h>", "<Left>", { desc = "Cursor left" })
keymap.set({"i", "n"}, "<C-j>", "<Down>", { desc = "Cursor down" })
keymap.set({"i", "n"}, "<C-k>", "<Up>", { desc = "Cursor up" })
keymap.set({"i", "n"}, "<C-l>", "<Right>", { desc = "Cursor right" })

keymap.set({"i", "n"}, "<A-h>", "<C-W>h", { desc = "Navigate pane left" })
keymap.set({"i", "n"}, "<A-j>", "<C-W>j", { desc = "Navigate pane down" })
keymap.set({"i", "n"}, "<A-k>", "<C-W>k", { desc = "Navigate pane up" })
keymap.set({"i", "n"}, "<A-l>", "<C-W>l", { desc = "Navigate pane right" })

keymap.set("n", "<leader>ln", function ()
    vim.opt.rnu = not(vim.opt.rnu:get())
end, { desc = "Toggle relative line numbering" })

local function toggle_cc()
    local cc = vim.opt.cc:get()
    if cc[1] == "80" then
        vim.opt.cc = ""
    else
        vim.opt.cc = "80"
    end
end

keymap.set("n", "<leader>cc", function ()
    toggle_cc()
end, { desc = "Toggle CC line" })

