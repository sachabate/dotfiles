return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
        local nvimtree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true
            },
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        git = {
                            unstaged = "",
                            staged = "",
                            unmerged = "󰾞",
                            renamed = "",
                            untracked = "",
                            deleted = ""
                        }
                    }
                }
            },
            actions = {
                open_file = {
                    window_picker = {
                        enable = false
                    }
                }
            },
            git = {
                ignore = false
            }
        })

        local keymap = vim.keymap

        keymap.set("n", "<C-t>", "<cmd>NvimTreeFindFile!<CR>", {
            desc = "Open file tree"
        })
        keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", {
            desc = "Toggle file tree"
        })
        keymap.set("n", "<A-b>", "<cmd>NvimTreeFindFileToggle!<CR>", {
            desc = "Toggle file tree on current file"
        })
    end
}
