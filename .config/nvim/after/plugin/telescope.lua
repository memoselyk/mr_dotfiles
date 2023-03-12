local builtin = require("telescope.builtin")

-- Key bind to trigger find files functionality
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
