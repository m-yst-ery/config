vim.keymap.set("n", "<leader>nt", vim.cmd.Ex)

-- remove mapping for hjkl
vim.keymap.set("n", "h", "<Nop>")
vim.keymap.set("n", "j", "<Nop>")
vim.keymap.set("n", "k", "<Nop>")
vim.keymap.set("n", "l", "<Nop>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Join next line" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "???" })

vim.keymap.set("n", "<C-Up>" , "<C-u>zz", { desc = "Page up and center on cursor" })
vim.keymap.set("n", "<C-Down>" , "<C-d>zz", { desc = "Page down and center on cursor" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })
vim.keymap.set("n", "N", "NzzzV", { desc = "Previous search result centered" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Replace (Visual mode)" })

vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank to os clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank to os clipboard" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Find and replace" })
