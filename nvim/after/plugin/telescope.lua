local ok, telescope = pcall(require, "telescope")
if not ok then
    return
end

local actions = require("telescope.actions")

-- Telescope
local builtin = require("telescope.builtin")
local file_browser = telescope.extensions.file_browser.file_browser
local opts = { noremap = true, silent = true }
vim.keymap.set('n', "<leader>ff", builtin.find_files, opts)
vim.keymap.set('n', "<leader>fb", file_browser, opts)
vim.keymap.set('n', "<leader>of", builtin.oldfiles, opts)
vim.keymap.set('n', "<leader>gf", builtin.git_files, opts)
vim.keymap.set('n', "<leader>fg", builtin.live_grep, opts)

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<S-x>"] = actions.file_vsplit,
                ["<C-t>"] = actions.select_tab,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
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
