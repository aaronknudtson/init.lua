local Remap = require("aaron.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Copy to clipboard
vnoremap("<leader>y", '"+y')
nnoremap("<leader>Y", '"+yg')
nnoremap("<leader>y", '"+y')
nnoremap("<leader>yy", '"+yy')

-- Paste from clipboard
nnoremap("<leader>p", '"+p')
nnoremap("<leader>P", '"+P')
vnoremap("<leader>p", '"+p')
vnoremap("<leader>P", '"+P')

-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Resize with arrows
nnoremap("<C-Up>", ":resize -2<CR>")
nnoremap("<C-Down>", ":resize +2<CR>")
nnoremap("<C-Left>", ":vertical resize -2<CR>")
nnoremap("<C-Right>", ":vertical resize +2<CR>")

-- Navigate buffers
nnoremap("<S-l>", ":bnext<CR>")
nnoremap("<S-h>", ":bprevious<CR>")

-- Split Windows
nnoremap("<leader>vs", ":vsplit<CR>")
nnoremap("<leader>hs", ":hsplit<CR>")

-- Move text up and down
nnoremap("<A-j>", "<Esc>:m .+1<CR>==gi")
nnoremap("<A-k>", "<Esc>:m .-2<CR>==gi")

-- whichkey dump 
nnoremap("<leader>a", "<cmd>Alpha<cr>")
nnoremap("<leader>c", "<cmd>Bdelete!<CR>")
nnoremap("<leader>w", "<cmd>w!<CR>")
nnoremap("<leader>q", "<cmd>q!<CR>")
nnoremap("<leader>e", "<cmd>Ex<cr>")
  --[[ ["p"] = { "*p", "Paste from clipboard" }, ]]
  --[[ ["y"] = { "*y", "Yank to clipboard" }, ]]
nnoremap("<leader>li", "<cmd>LspInfo<cr>")
nnoremap("<leader>lI", "<cmd>LspInstallInfocr>")



-- Insert --
-- Press jk fast to exit insert mode 
--[[ inoremap("jk", "<ESC>") ]]

-- Visual --
-- Stay in indent mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Move text up and down
vnoremap("<A-j>", ":m .+1<CR>==")
vnoremap("<A-k>", ":m .-2<CR>==")
vnoremap("p", '"_dP')

-- Visual Block --
-- Move text up and down
vnoremap("J", ":move '>+1<CR>gv-gv")
vnoremap("K", ":move '<-2<CR>gv-gv")
vnoremap("<A-j>", ":move '>+1<CR>gv-gv")
vnoremap("<A-k>", ":move '<-2<CR>gv-gv")


-- Telescope --
nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<leader>pl", "<cmd>Telescope live_grep<cr>")
nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<Leader>pf", function()
    require('telescope.builtin').find_files()
end)

nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
nnoremap("<leader>pb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>vh", function()
    require('telescope.builtin').help_tags()
end)
