return function()
	require("nvim-treesitter").setup({
		-- A list of parser names, or "all"
		ensure_installed = {
			"vimdoc",
			"javascript",
			"typescript",
			"c",
			"lua",
			"rust",
			"jsdoc",
			"bash",
			"go",
		},

		-- Install parsers synchronously (only applied to `ensure_installed`)
		sync_install = false,

		-- Automatically install missing parsers when entering buffer
		-- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
		auto_install = true,

		indent = {
			enable = true,
		},

		highlight = {
			-- `false` will disable the whole extension
			enable = true,
			-- Instead of true it can also be a list of languages
			additional_vim_regex_highlighting = { "markdown" },
		},
	})

	local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
	treesitter_parser_config.templ = {
		install_info = {
			url = "https://github.com/vrischmann/tree-sitter-templ.git",
			files = { "src/parser.c", "src/scanner.c" },
			branch = "master",
		},
	}

	vim.treesitter.language.register("templ", "templ")
end
