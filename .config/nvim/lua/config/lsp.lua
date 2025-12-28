vim.diagnostic.config({
	virtual_text = true,
	underline = true,
	severity_sort = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "🚨",
			[vim.diagnostic.severity.WARN] = "⚠️",
			[vim.diagnostic.severity.HINT] = "🤔",
			[vim.diagnostic.severity.INFO] = "ℹ️",
		},
	},
})
