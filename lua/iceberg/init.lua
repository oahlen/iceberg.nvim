local M = {}

function M.init(theme)
    theme = theme or vim.o.background

    vim.cmd("hi clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "iceberg"
    vim.o.termguicolors = true

    palette = require(string.format("iceberg.palette-%s", theme))
    palette.set_highlights()
    palette.set_globals()
end

return M
