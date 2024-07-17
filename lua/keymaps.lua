local utils = require "utils"
-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
-- Remove search highlights on escape
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>')
-- Control s to save
vim.keymap.set('n', '<C-s>', ':w<CR>')
-- Close current buffer
vim.keymap.set('n', '<leader>x', utils.bufremove)
-- LSP stuff
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<cr>", {})
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<cr>", {})
--Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>", {})
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<cr>", {})
-- none-ls formatting
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
-- lualine and bufferline
vim.keymap.set("n", "<C-.>", ":bn<CR>", {})
vim.keymap.set("n", "<C-,>", ":bp<CR>", {})
-- Markdown and Autolist
vim.keymap.set("i", "<tab>", "<cmd>AutolistTab<cr>")
vim.keymap.set("i", "<s-tab>", "<cmd>AutolistShiftTab<cr>")
-- vim.keymap.set("i", "<c-t>", "<c-t><cmd>AutolistRecalculate<cr>") -- an example of using <c-t> to indent
vim.keymap.set("i", "<CR>", "<CR><cmd>AutolistNewBullet<cr>")
vim.keymap.set("n", "o", "o<cmd>AutolistNewBullet<cr>")
vim.keymap.set("n", "O", "O<cmd>AutolistNewBulletBefore<cr>")
vim.keymap.set("n", "<CR>", "<cmd>AutolistToggleCheckbox<cr><CR>")
vim.keymap.set("n", "<C-r>", "<cmd>AutolistRecalculate<cr>")

-- cycle list types with dot-repeat
vim.keymap.set("n", "<leader>cn", require("autolist").cycle_next_dr, { expr = true })
vim.keymap.set("n", "<leader>cp", require("autolist").cycle_prev_dr, { expr = true })

-- functions to recalculate list on edit
vim.keymap.set("n", ">>", ">><cmd>AutolistRecalculate<cr>")
vim.keymap.set("n", "<<", "<<<cmd>AutolistRecalculate<cr>")
vim.keymap.set("n", "dd", "dd<cmd>AutolistRecalculate<cr>")
vim.keymap.set("v", "d", "d<cmd>AutolistRecalculate<cr>")
