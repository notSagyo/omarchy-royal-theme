return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1a1a1c", -- Default background
                base01 = "#ba8d22", -- Lighter background (status bars)
                base02 = "#1a1a1c", -- Selection background
                base03 = "#ba8d22", -- Comments, invisibles
                base04 = "#fdf5a7", -- Dark foreground
                base05 = "#f2ddc2", -- Default foreground
                base06 = "#f2ddc2", -- Light foreground
                base07 = "#fdf5a7", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#f79605", -- Variables, errors, red
                base09 = "#f5dc89", -- Integers, constants, orange
                base0A = "#f5c651", -- Classes, types, yellow
                base0B = "#d7be67", -- Strings, green
                base0C = "#f9e198", -- Support, regex, cyan
                base0D = "#cbb15b", -- Functions, keywords, blue
                base0E = "#e7b211", -- Keywords, storage, magenta
                base0F = "#fee4a4", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
