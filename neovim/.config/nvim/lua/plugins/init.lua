return {
  {
		'xiyaowong/transparent.nvim',
		lazy = false,
		config = function()
			-- vim.cmd("TransparentEnable")
      vim.cmd("TransparentDisable")
			vim.keymap.set(
        "n",
        "<C-t>",
        ":TransparentToggle<CR>",
        { desc = 'Toggle Transparency' })
		end
	},
}
