local lib = require("diffview")

vim.keymap.set("n", "<leader>do", lib.open)
vim.keymap.set("n", "<leader>dq", lib.close)
vim.keymap.set("n", "<leader>dt", function() lib.emit("toggle_files") end)
