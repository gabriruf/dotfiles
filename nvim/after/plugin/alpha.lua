local ok, alpha = pcall(require, "alpha")
if not ok then
    return
end

local ok2, dashboard = pcall(require, "alpha.themes.dashboard")
if not ok2 then
    return
end

dashboard.section.header.val = {
    [[             .888888:.            ]],
    [[             88888.888.           ]],
    [[            .8888888888           ]],
    [[            8' `88' `888          ]],
    [[            8 8 88 8 888          ]],
    [[            8:.,::,.:888          ]],
    [[           .8`::::::'888          ]],
    [[           88  `::'  888          ]],
    [[          .88        `888.        ]],
    [[        .88'   .::.  .:8888.      ]],
    [[        888.'   :'    `'88:88.    ]],
    [[      .8888'    '        88:88.   ]],
    [[     .8888'     .        88:888   ]],
    [[     `88888     :        8:888'   ]],
    [[      `.:.88    .       .::888'   ]],
    [[     .:::::88   `      .:::::::.  ]],
    [[    .::::::.8         .:::::::::  ]],
    [[    :::::::::..     .:::::::::'   ]],
    [[     `:::::::::88888:::::::'      ]],
    [[        rs`:::'       `:'         ]],
}
 

dashboard.section.buttons.val = {
    dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "spc f f", "󰭎  Find Files", ":Telescope find_files<CR>"),
    dashboard.button( "spc c f g", "  Neovim Config Directory", ":Telescope file_browser path=~/.config/nvim <CR>"),
    dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>"),
}

--local handle = io.popen('fortune')
--local fortune = handle:read("*a")
--handle:close()
dashboard.section.footer.val = { [[If you don’t know where you’re going, any road will get you there.]] }

dashboard.config.opts.noautocmd = true

vim.cmd[[autocmd User AlphaReady echo 'ready']]

alpha.setup(dashboard.config)


--require'alpha'.setup(require'alpha.themes.dashboard'.config)

