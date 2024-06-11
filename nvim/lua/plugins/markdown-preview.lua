return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
	vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreview<CR>", { desc = "Open Markdown Preview", noremap=true })
}
