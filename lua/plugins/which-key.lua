--OLD

-- Non nested

-- wk.register(
--     {<keybind>,<command>, <description>},
--     ...
-- )




-- Nested

-- wk.register({
-- <first_part_of_keybind> = {

--     name = "Name",
--     <second_part_of_keybind> = {<command>, <description>},
--      ...

--      Double nesting

--     <third_part_of_keybind = {
--     name = "Name2",

--     <fourth_part_of_keybind> = {<command>, <description>},
--      ...
--     }
-- }
-- }, { prefix = "Prefix"})



local wk = require("which-key")
local hydra = require("hydra")

wk.setup{
    notify=false,
}


local test=hydra({

    name="File Tree",
    mode='n',
    hint='Here',
    config={
        on_enter=function()
            vim.cmd(":NvimTreeToggle")
        end,

        foreign_keys='warn',

        hint={
            type="window",
            border='rounded',
            position="middle-right"
        }
    },

    heads={
        {'f','',{desc="Test option"}}
    }


})


--Global
wk.add(
    {
        {'<leader>d', group="Tests"},
        {'<leader>dt',
          function()
             test:activate()
          end,
          desc='Test'},
    }
)



wk.add({

    {'<leader>l', group='LSP'},
    {'<leader>lr','<cmd>lua vim.lsp.buf.rename()<CR>', desc= "Rename symbol"},
    {'<leader>la','<cmd>lua vim.lsp.buf.code_action()<CR>', desc= "Code action"},
})

wk.add({

    {'<leader>t', group='Telescope'},
    {'<leader>tt', '<cmd>Telescope<cr>',desc='Open telescope'},
    {'<leader>tp', '<cmd>Telescope oldfiles<cr>',desc='Old files'},
    {'<leader>tp', '<cmd>Telescope oldfiles<cr>',desc='Old files'},
    {'<leader>tj', '<cmd>Telescope jumplist<cr>',desc='Jumplist'},
    {'<leader>tb', '<cmd>Telescope buffers<cr>',desc='Buffers'},
    {'<leader>tb', '<cmd>Telescope find_files<cr>',desc='Find files'},

    {'<leader>g', group='Git'},
    {'<leader>gb', '<cmd>Telescope git_branches<cr>',desc='Git branches'},
    {'<leader>gf', '<cmd>Telescope git_files<cr>',desc='Git files'},
})
