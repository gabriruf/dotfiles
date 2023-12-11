local ok, db = pcall(require, "dashboard")
if not ok then
    return
end

vim.g.mapleader = " "


db.setup({
  theme = 'doom',
  config = {
    header = {
        [[                                                            ]],
        [[                                                         ,@ ]],
        [[          @                                            @@,  ]],
        [[ @         @@                     (      @/         @@@@    ]],
        [[   @@       @@@                 @@&   @@@        @@@@       ]],
        [[     @@@(     @@@@@@@@@@@@@@@@@@@@    @@      ,@@@@         ]],
        [[       @@@@    @@@%            &@   @@@     @@@@#           ]],
        [[         /@@@@   @     &@@@@@@@   @@@    @@@@@      @@      ]],
        [[   @@.      @@@@  @@@@@@       @@@@@  @@@@@@    @@@@        ]],
        [[       @@@@    @@@@              @ ,@@@@@   @@@@@           ]],
        [[           @@@#   @              @@@@@@  @@(  @@@           ]],
        [[                     (@@@@@@@@@@@@@@@          @@@          ]],
        [[                   @@@@         @@@            #@@          ]],
        [[                   @.    @@@@%   @@/  @@.@@     @@          ]],
        [[                         #@@@   .@@   %@@@@     @@          ]],
        [[                     @@@       @@@*            @@@          ]],
        [[         @@@@  @  @@@@@@@@@@@@@@               @@           ]],
        [[         @@ @@  @@@@@                         @@.           ]],
        [[         ,    (@@@                    @@    @@@             ]],
        [[             @@                         @@@@@@              ]],
        [[                                          .@@@              ]],
        [[                                             @@@            ]],
        [[                                                @@.         ]],
        [[                                                   @@       ]],
        [[                                                            ]],
    },
    center = {
        { action = "ene <BAR> startinsert",                      desc = " New file",     icon = "  ", key = "e" },
        { action = "Telescope find_files",                       desc = " Find file",    icon = "󰭎  ", key = "ff" },
        { action = "Telescope oldfiles",                         desc = " Recent files", icon = "  ", key = "of" },
        { action = "Telescope live_grep",                        desc = " Find text",    icon = "󰈭  ", key = "lg" },
        { action = "Telescope file_browser path=~/.config/nvim", desc = " Config",       icon = "  ", key = "cfg" },
        { action = "qa!",                                        desc = " Quit neovim",  icon = "󰅚  ", key = "q" },
    },
    --footer = {}  --your footer
    footer = function()
        local stats = require("lazy").stats()
        return { "loaded " .. stats.loaded .. "/" .. stats.count .. " plugins" }
    end,
  }
})
