local hydra = require("hydra")


local test=hydra({
    name="File Tree",
    mode='n',
    config={
        on_enter=function()
            vim.cmd(":NvimTreeToggle")
        end,
        on_exit=function()
            vim.cmd(":NvimTreeToggle")
        end
    },
    heads={}
})