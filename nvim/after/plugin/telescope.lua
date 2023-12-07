local ok, telescope = pcall(require, "telescope")
if not ok then
    return
end

local actions = require("telescope.actions")

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', "<leader>ff", builtin.find_files, { noremap = true, silent = true })
vim.keymap.set('n', "<leader>gf", builtin.git_files, { noremap = true, silent = true })
vim.keymap.set('n', "<leader>fg", builtin.live_grep, { noremap = true, silent = true })
vim.keymap.set('n', "<leader>fb", ":Telescope file_browser<CR>", { noremap = true, silent = true })

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<S-x>"] = actions.file_vsplit,
            }
        }
    },
    pickers = {
       find_files = {
           theme = "dropdown",
       }
    },
    extensions = {
        file_browser = {
            theme = "ivy",
            hijack_netrw = true,
        }
    }
}

telescope.load_extension "file_browser"
