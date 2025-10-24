-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Show raw Markdown (don’t conceal backticks/fences)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.wo.conceallevel = 0
    vim.wo.concealcursor = ""
  end,
})

-- Stop continuing comments/lists on new lines
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    -- remove "c", "r", "o" just in case any are present
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})
