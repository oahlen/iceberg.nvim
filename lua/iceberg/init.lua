local iceberg = {}

local function set_terminal_colors()
    vim.g.terminal_color_0          = "#1e2132"
    vim.g.terminal_color_1          = "#e27878"
    vim.g.terminal_color_2          = "#b4be82"
    vim.g.terminal_color_3          = "#e2a478"
    vim.g.terminal_color_4          = "#84a0c6"
    vim.g.terminal_color_5          = "#a093c7"
    vim.g.terminal_color_6          = "#89b8c2"
    vim.g.terminal_color_7          = "#c6c8d1"
    vim.g.terminal_color_8          = "#6b7089"
    vim.g.terminal_color_9          = "#e98989"
    vim.g.terminal_color_10         = "#c0ca8e"
    vim.g.terminal_color_11         = "#e9b189"
    vim.g.terminal_color_12         = "#91acd1"
    vim.g.terminal_color_13         = "#ada0d3"
    vim.g.terminal_color_14         = "#95c4ce"
    vim.g.terminal_color_15         = "#d2d4de"
    vim.g.terminal_color_background = "#161821"
    vim.g.terminal_color_foreground = "#c6c8d1"
end

local function set_hl_groups()
    local groups = {
        Normal = { bg = "#161821", fg = "#c6c8d1" },
        ColorColumn = { bg = "#1e2132" },
        CursorColumn = { bg = "#1e2132" },
        CursorLine = { bg = "#1e2132" },
        Comment = { fg = "#6b7089" },
        Conceal = { bg = "#161821", fg = "#6b7089" },
        Constant = { fg = "#a093c7" },
        Cursor = { bg = "#c6c8d1", fg = "#161821" },
        CursorLineNr = { bg = "#2a3158", fg = "#cdd1e6" },
        Delimiter = { fg = "#c6c8d1" },
        DiffAdd = { bg = "#45493e", fg = "#c0c5b9" },
        DiffChange = { bg = "#384851", fg = "#b3c3cc" },
        DiffDelete = { bg = "#53343b", fg = "#ceb0b6" },
        DiffText = { bg = "#5b7881", fg = "#c6c8d1" },
        Directory = { fg = "#84a0c6" }, -- diff
        Error = { bg = "#161821", fg = "#e27878" },
        ErrorMsg = { bg = "#161821", fg = "#e27878" },
        WarningMsg = { bg = "#161821", fg = "#e27878" },
        EndOfBuffer = { fg = "#242940" },
        NonText = { fg = "#242940" },
        Whitespace = { fg = "#242940" },
        FloatBorder = { bg = "#3d425b", fg = "#6b7089" }, -- diff
        FloatTitle = { fg = "#e2a478" }, -- diff
        Folded = { bg = "#1e2132", fg = "#686f9a" },
        FoldColumn = { bg = "#1e2132", fg = "#444b71" },
        Function = { fg = "#84a0c6" },
        Identifier = { fg = "#89b8c2" },
        Ignore = { bg = "NONE", fg = "NONE" },
        Include = { fg = "#84a0c6" },
        IncSearch = { fg = "NONE", reverse = true },
        LineNr = { bg = "#1e2132", fg = "#444b71" },
        MatchParen = { bg = "#3e445e", fg = "#ffffff" },
        ModeMsg = { fg = "#6b7089" },
        MoreMsg = { fg = "#b4be82" },
        NormalFloat = { bg = "#3d425b", fg = "#c6c8d1" }, -- diff
        Operator = { fg = "#84a0c6" },
        Pmenu = { bg = "#3d425b", fg = "#c6c8d1" },
        PmenuSBar = { bg = "#3d425b", fg = "NONE" },
        PmenuSel = { bg = "#5b6389", fg = "#eff0f4" },
        PmenuThumb = { bg = "#c6c8d1", fg = "NONE" },
        PreProc = { fg = "#b4be82" },
        Question = { fg = "#b4be82" },
        QuickFixLine = { bg = "#272c42", fg = "#c6c8d1" },
        Search = { bg = "#e4aa80", fg = "#392313" },
        SignColumn = { bg = "#1e2132", fg = "#444b71" },
        Special = { fg = "#b4be82" },
        SpecialKey = { fg = "#515e97" },
        SpellBad = { fg = "NONE", sp = "#e27878", undercurl = true },
        SpellCap = { fg = "NONE", sp = "#84a0c6", undercurl = true },
        SpellLocal = { fg = "NONE", sp = "#89b8c2", undercurl = true },
        SpellRare = { fg = "NONE", sp = "#a093c7", undercurl = true },
        Statement = { fg = "#84a0c6" },
        StatusLine = { bg = "#17171b", fg = "#818596", reverse = true },
        StatusLineTerm = { bg = "#17171b", fg = "#818596", reverse = true },
        StatusLineNC = { bg = "#3e445e", fg = "#0f1117", reverse = true },
        StatusLineTermNC = { bg = "#3e445e", fg = "#0f1117", reverse = true },
        StorageClass = { fg = "#84a0c6" },
        String = { fg = "#89b8c2" },
        Structure = { fg = "#84a0c6" },
        TabLine = { bg = "#0f1117", fg = "#3e445e" },
        TabLineFill = { bg = "#3e445e", fg = "#0f1117" },
        TabLineSel = { bg = "#161821", fg = "#9a9ca5" },
        TermCursorNC = { bg = "#6b7089", fg = "#161821" },
        Title = { fg = "#e2a478" },
        Todo = { bg = "#45493e", fg = "#b4be82", bold = true },
        Type = { fg = "#84a0c6" },
        Underlined = { fg = "#84a0c6", underline = true },
        VertSplit = { bg = "#0f1117", fg = "#0f1117" },
        Visual = { bg = "#272c42", fg = "NONE" },
        VisualNOS = { bg = "#272c42", fg = "NONE" },
        WildMenu = { bg = "#d4d5db", fg = "#17171b" },
        icebergNormalFg = { fg = "#c6c8d1" },
        GitGutterAdd = { bg = "#1e2132", fg = "#b4be82" },
        GitGutterChange = { bg = "#1e2132", fg = "#89b8c2" },
        GitGutterChangeDelete = { bg = "#1e2132", fg = "#89b8c2" },
        GitGutterDelete = { bg = "#1e2132", fg = "#e27878" },
        Method = { fg = "#a3adcb" },
        Uri = { fg = "#89b8c2", underline = true },

        DiagnosticUnderlineInfo = { sp = "#89b8c2", underline = true },
        DiagnosticInfo = { fg = "#89b8c2" },
        DiagnosticSignInfo = { bg = "#1e2132", fg = "#89b8c2" },
        DiagnosticUnderlineHint = { sp = "#6b7089", underline = true },
        DiagnosticHint = { fg = "#6b7089" },
        DiagnosticSignHint = { bg = "#1e2132", fg = "#6b7089" },
        DiagnosticUnderlineWarn = { sp = "#e2a478", underline = true },
        DiagnosticWarn = { fg = "#e2a478" },
        DiagnosticSignWarn = { bg = "#1e2132", fg = "#e2a478" },
        DiagnosticUnderlineError = { sp = "#e27878", underline = true },
        DiagnosticError = { fg = "#e27878" },
        DiagnosticSignError = { bg = "#1e2132", fg = "#e27878" },
        DiagnosticFloatingHint = { bg = "#3d425b", fg = "#c6c8d1" },

        CmpItemAbbr              = { link = "icebergNormalFg" },
        CmpItemAbbrDeprecated    = { fg = "#6b7089" },
        CmpItemAbbrMatch         = { fg = "#e2a478" },
        CmpItemAbbrMatchFuzzy    = { fg = "#b4be82" },
        CmpItemKind              = { fg = "#84a0c6" },
        CmpItemKindClass         = { link = "Type" },
        CmpItemKindColor         = { link = "Special" },
        CmpItemKindConstant      = { link = "Constant" },
        CmpItemKindConstructor   = { link = "icebergNormalFg" },
        CmpItemKindEnum          = { link = "Type" },
        CmpItemKindEnumMember    = { link = "Constant" },
        CmpItemKindEvent         = { link = "Special" },
        CmpItemKindField         = { link = "icebergNormalFg" },
        CmpItemKindFile          = { link = "icebergNormalFg" },
        CmpItemKindFolder        = { link = "Directory" },
        CmpItemKindFunction      = { link = "Method" },
        CmpItemKindInterface     = { link = "Type" },
        CmpItemKindKeyword       = { link = "Statement" },
        CmpItemKindMethod        = { link = "Method" },
        CmpItemKindModule        = { link = "Type" },
        CmpItemKindOperator      = { link = "icebergNormalFg" },
        CmpItemKindProperty      = { link = "icebergNormalFg" },
        CmpItemKindReference     = { link = "icebergNormalFg" },
        CmpItemKindSnippet       = { link = "String" },
        CmpItemKindStruct        = { link = "StorageClass" },
        CmpItemKindText          = { link = "String" },
        CmpItemKindTypeParameter = { link = "icebergNormalFg" },
        CmpItemKindUnit          = { link = "Constant" },
        CmpItemKindValue         = { link = "icebergNormalFg" },
        CmpItemKindVariable      = { link = "icebergNormalFg" },
        CmpItemMenu              = { link = "icebergNormalFg" },

        TelescopeBorder         = { bg = "NONE", fg = "#6b7089" },
        TelescopeMatching       = { fg = "#e2a478" },
        TelescopePreviewExecute = { fg = "#b4be82" },
        TelescopePreviewRead    = { fg = "#e2a478" },
        TelescopePreviewSize    = { fg = "#b4be82" },
        TelescopePreviewUser    = { fg = "#e2a478" },
        TelescopePreviewWrite   = { fg = "#e27878" },
        TelescopePromptPrefix   = { fg = "#b4be82" },
        TelescopePromptCounter  = { fg = "#444b71" },

        NvimTreeFolderIcon = { link = "Directory" },
        NvimTreeIndentMarker = { link = "Directory" },

        MasonHeader = { bg = "#e2a478", fg = "#0f1117" },
        MasonHeaderSecondary = { bg = "#89b8c2", fg = "#0f1117" },
        MasonHighlight = { fg = "#89b8c2" },
        MasonHighlightBlock = { bg = "#89b8c2", fg = "#0f1117" },
        MasonHighlightBlockBold = { bg = "#89b8c2", fg = "#0f1117", bold = true },
        MasonHighlightSecondary = { fg = "#b4be82" },
        MasonHighlightBlockSecondary = { bg = "#b4be82", fg = "#0f1117" },
        MasonHighlightBlockBoldSecondary = { bg = "#b4be82", fg = "#0f1117", bold = true },
        MasonMuted = { fg = "#6b7089", },
        MasonMutedBlock = { bg = "#6b7089", fg = "#0f1117" },
        MasonMutedBlockBold = { bg = "#6b7089", fg = "#0f1117", bold = true },
        MasonError = { fg = "#e27878" },

        LeapMatch = { bg = "#e2a478", fg = "#1e2132", bold = true },
        LeapLabelPrimary = { bg = "#b4be82", fg = "#1e2132", bold = true },
        LeapLabelSecondary = { bg = "#a093c7", fg = "#1e2132", bold = true },

        IblScope = { fg = "#444b71" },

        TermCursor = { link = "Cursor" },
        ToolbarButton = { link = "TabLineSel" },
        ToolbarLine = { link = "TabLineFill" },

        -- Treesitter highlights
        ["@attribute"] = { link = "Special" },
        ["@boolean"] = { link = "Constant" },
        ["@character"] = { link = "Constant" },
        ["@character.special"] = { link = "Constant" },
        ["@comment"] = { link = "Comment" },
        ["@conditional"] = { link = "Statement" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@constant"] = { link = "Constant" },
        ["@constant.macro"] = { link = "Constant" },
        ["@constructor"] = { link = "icebergNormalFg" },
        ["@error"] = { link = "Error" },
        ["@exception"] = { link = "Statement" },
        ["@field"] = { link = "icebergNormalFg" },
        ["@float"] = { link = "Constant" },
        ["@function.builtin"] = { link = "Method" },
        ["@function"] = { link = "Method" },
        ["@function.macro"] = { link = "Method" },
        ["@include"] = { link = "Method" }, -- diff
        ["@keyword.function"] = { link = "Function" },
        ["@keyword"] = { link = "Statement" },
        ["@label"] = { link = "Special" },
        ["@method"] = { link = "Method" },
        ["@namespace"] = { link = "Statement" },
        ["@number"] = { link = "Constant" },
        ["@operator"] = { link = "icebergNormalFg" },
        ["@parameter"] = { link = "icebergNormalFg" },
        ["@preproc"] = { link = "PreProc" },
        ["@property"] = { link = "icebergNormalFg" },
        ["@punctuation.bracket"] = { link = "icebergNormalFg" },
        ["@punctuation.delimiter"] = { link = "icebergNormalFg" },
        ["@punctuation.special"] = { link = "Special" },
        ["@repeat"] = { link = "Statement" },
        ["@string.escape"] = { link = "Special" },
        ["@string"] = { link = "String" },
        ["@string.regex"] = { link = "String" },
        ["@string.special"] = { link = "Special" },
        ["@tag.attribute"] = { link = "Constant" },
        ["@tag.delimiter"] = { link = "Statement" },
        ["@tag"] = { link = "Statement" },
        ["@text"] = { link = "icebergNormalFg" },
        ["@text.title"] = { link = "Title" },
        ["@text.uri"] = { link = "Uri" },
        ["@text.warning"] = { link = "Todo" },
        ["@type.builtin"] = { link = "Type" },
        ["@type"] = { link = "Type" },
        ["@type.definition"] = { link = "Keyword" },
        ["@type.qualifier"] = { link = "Keyword" },
        ["@variable.builtin"] = { link = "Statement" },
        ["@variable"] = { link = "icebergNormalFg" },

        -- Language specific highlights
        ["@field.yaml"] = { link = "Statement" },
        ["@label.json"] = { link = "Statement" },
        ["@property.toml"] = { link = "Statement" },

        -- Non treesitter highlights
        xmlAttrib = { link = "Constant" },
        xmlAttribPunct = { link = "Statement" },
        xmlEndTag = { link = "Statement" },
        xmlNamespace = { link = "Statement" },
        xmlTag = { link = "Statement" },
        xmlTagName = { link = "Statement" },

        -- LSP
        ["@lsp.type.decorator"] = { link = "Special" }, -- Function
        ["@lsp.type.function"] = { link = "@function" }, -- Function
        ["@lsp.type.method"] = { link = "@method" }, -- Function
        ["@lsp.type.parameter"] = { link = "@parameter" }, -- Identifier
        ["@lsp.type.property"] = { link = "@property" }, -- Identifier
        ["@lsp.type.variable"] = { link = "icebergNormalFg" }, -- Identifier
    }

    for group, parameters in pairs(groups) do
        vim.api.nvim_set_hl(0, group, parameters)
    end
end

function iceberg.init()
    vim.cmd("hi clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "iceberg"

    set_terminal_colors()
    set_hl_groups()
end

return iceberg
