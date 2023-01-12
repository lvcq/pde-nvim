vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- global configurate

require("plugins")

vim.cmd [[ colorscheme iceberg]]

-- indent set
vim.o.tabstop=2
vim.o.softtabstop=2
vim.o.shiftwidth=2
vim.o.expandtab=true

-- syntax
vim.o.syntax="on"
vim.o.number=true


require("config")
