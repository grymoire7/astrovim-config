-- if true then return end -- xWARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- use ; for :
vim.keymap.set({ "n", "x" }, ";", ":")

-- quick access to previous buffer
vim.keymap.set("n", "<leader><Tab>", "<C-^>", { desc = "Previous Buffer" })

-- Set line numbering options directly
vim.opt.relativenumber = false
vim.opt.number = true
