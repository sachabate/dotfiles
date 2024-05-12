local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open directory" })

keymap.set("i", "<C-o>", "<Esc>o", { desc = "New line below" })
keymap.set("i", "<C-S-O>", "<Esc>O", { desc = "New line above" })

keymap.set("i", "<A-BS>", "<C-W>", { desc = "Delete last word" })

keymap.set({"i", "n"}, "<A-h>", "<Left>", { desc = "Cursor left" })
keymap.set({"i", "n"}, "<A-j>", "<Down>", { desc = "Cursor down" })
keymap.set({"i", "n"}, "<A-k>", "<Up>", { desc = "Cursor up" })
keymap.set({"i", "n"}, "<A-l>", "<Right>", { desc = "Cursor right" })

if vim.g.vscode then
    keymap.set({"i", "n"}, "<C-h>", "<Cmd>lua require('vscode-neovim').call('workbench.action.navigateLeft')<CR>", { desc = "Navigate pane left" })
    keymap.set({"i", "n"}, "<C-j>", "<Cmd>lua require('vscode-neovim').call('workbench.action.navigateDown')<CR>", { desc = "Navigate pane down" })
    keymap.set({"i", "n"}, "<C-k>", "<Cmd>lua require('vscode-neovim').call('workbench.action.navigateUp')<CR>", { desc = "Navigate pane up" })
    keymap.set({"i", "n"}, "<C-l>", "<Cmd>lua require('vscode-neovim').call('workbench.action.navigateRight')<CR>", { desc = "Navigate pane right" })
else
    keymap.set({"i", "n"}, "<C-h>", "<Esc><C-W>h", { desc = "Navigate pane left" })
    keymap.set({"i", "n"}, "<C-j>", "<Esc><C-W>j", { desc = "Navigate pane down" })
    keymap.set({"i", "n"}, "<C-k>", "<Esc><C-W>k", { desc = "Navigate pane up" })
    keymap.set({"i", "n"}, "<C-l>", "<Esc><C-W>l", { desc = "Navigate pane right" })
end

keymap.set("n", "<leader>ln", function ()
    vim.opt.rnu = not(vim.opt.rnu:get())
end, { desc = "Toggle relative line numbering" })

local function toggle_cc()
    local cc = vim.opt.cc:get()
    if cc[1] == "100" then
        vim.opt.cc = ""
    else
        vim.opt.cc = "100"
    end
end

keymap.set("n", "<leader>cc", function ()
    toggle_cc()
end, { desc = "Toggle CC line" })

