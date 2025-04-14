return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	opts = {},
	keys = {
		{ "<leader>pf", function() require "telescope.builtin".find_files() end, mode = "n" },
		{ '<leader>ps', function() require 'telescope.builtin'.grep_string({ search = vim.fn.input("Grep > ") })end , mode = 'n' }
	},
}
