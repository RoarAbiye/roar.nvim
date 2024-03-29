local builtin = require("telescope.builtin")

require('telescope').load_extension('media_files')

vim.keymap.set("n","<leader>ff", builtin.find_files, {})
vim.keymap.set("n","<C-p>", builtin.git_files, {})
vim.keymap.set("n","<leader>ss", function(use)
	builtin.grep_string({ search = vim.fn.input("Search For > ") });
end)

