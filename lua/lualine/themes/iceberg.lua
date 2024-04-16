if vim.o.background == "light" then
    return {
        normal = {
            a = { bg = "#757ca3", fg = "#e8e9ec" },
            b = { bg = "#9fa6c0", fg = "#e8e9ec" },
            c = { bg = "#cad0de", fg = "#8b98b6" }
        },
        insert = {
            a = { bg = "#2d539e", fg = "#e8e9ec" },
            b = { bg = "#9fa6c0", fg = "#e8e9ec" },
            c = { bg = "#cad0de", fg = "#8b98b6" }
        },
        visual = {
            a = { bg = "#668e3d", fg = "#e8e9ec" },
            b = { bg = "#9fa6c0", fg = "#e8e9ec" },
            c = { bg = "#cad0de", fg = "#8b98b6" }
        },
        replace = {
            a = { bg = "#c57339", fg = "#e8e9ec" },
            b = { bg = "#9fa6c0", fg = "#e8e9ec" },
            c = { bg = "#cad0de", fg = "#8b98b6" }
        },
        command = {
            a = { bg = "#7759b4", fg = "#e8e9ec" },
            b = { bg = "#9fa6c0", fg = "#e8e9ec" },
            c = { bg = "#cad0de", fg = "#8b98b6" }
        },
        terminal = {
            a = { bg = "#3f83a6", fg = "#e8e9ec" },
            b = { bg = "#9fa6c0", fg = "#e8e9ec" },
            c = { bg = "#cad0de", fg = "#8b98b6" }
        },
        inactive = {
            a = { bg = "#757ca3", fg = "#e8e9ec" },
            b = { bg = "#9fa6c0", fg = "#e8e9ec" },
            c = { bg = "#cad0de", fg = "#8b98b6" }
        }
    }
end

return {
    normal = {
        a = { bg = "#818596", fg = "#17171b" },
        b = { bg = "#2e313f", fg = "#6b7089" },
        c = { bg = "#0f1117", fg = "#3e445e" }
    },
    insert = {
        a = { bg = "#84a0c6", fg = "#161821" },
        b = { bg = "#2e313f", fg = "#6b7089" },
        c = { bg = "#0f1117", fg = "#3e445e" }
    },
    visual = {
        a = { bg = "#b4be82", fg = "#161821" },
        b = { bg = "#2e313f", fg = "#6b7089" },
        c = { bg = "#0f1117", fg = "#3e445e" }
    },
    replace = {
        a = { bg = "#e2a478", fg = "#161821" },
        b = { bg = "#2e313f", fg = "#6b7089" },
        c = { bg = "#0f1117", fg = "#3e445e" }
    },
    command = {
        a = { bg = "#a093c7", fg = "#161821" },
        b = { bg = "#2e313f", fg = "#6b7089" },
        c = { bg = "#0f1117", fg = "#3e445e" }
    },
    terminal = {
        a = { bg = "#89b8c2", fg = "#161821" },
        b = { bg = "#2e313f", fg = "#6b7089" },
        c = { bg = "#0f1117", fg = "#3e445e" }
    },
    inactive = {
        a = { bg = "#818596", fg = "#17171b" },
        b = { bg = "#2e313f", fg = "#6b7089" },
        c = { bg = "#0f1117", fg = "#3e445e" }
    }
}
