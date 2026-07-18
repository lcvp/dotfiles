vim.o.number = true
vim.o.relativenumber = true
vim.cmd.colorscheme("catppuccin")

vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
})

require("mason").setup()
require("mason-lspconfig").setup()

require("conform").setup({ format_on_save = { lsp_format = "fallback" } })

require("telescope").setup({ defaults = { path_display = { "truncate" } } })
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
