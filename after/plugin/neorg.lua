require("neorg").setup {
    -- requires = { "core.autocommands" },
  require("cmp"),
    load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.completion"] = { config = {engine = "nvim-cmp" }},
    ['core.norg.qol.todo_items'] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/work",
                    home = "~/notes/home",
                }
            }
        },
    }
}
