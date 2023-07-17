local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "svelte",
    "bash",
    "lua",
    "vim",
    -- "dockerfile",
    "gitignore",
    "fish",
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable         = true,
    enable_autocmd = false,
  },
  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    -- disable = { "jsx", "cpp", "html", "lua" },
    -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    extended_mode = true,
    -- Do not enable for files with more than n lines, int
    max_file_lines = nil,
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings

    -- query = "rainbow-parens",
    -- strategy = require("ts-rainbow").strategy.global,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

