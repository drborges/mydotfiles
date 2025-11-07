-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function safe_write()
  -- Skip if buffer isn't modifiable or is a special/readonly buffer
  if vim.bo.buftype ~= "" then
    return
  end
  if not vim.bo.modifiable then
    return
  end
  if vim.bo.readonly then
    return
  end
  -- Only write if modified
  if vim.bo.modified then
    -- pcall to avoid errors surfacing for unwritable files
    pcall(vim.cmd, "silent! update")
  end
end

-- Save on BufLeave (leaving the current buffer)
vim.api.nvim_create_autocmd("BufLeave", {
  group = vim.api.nvim_create_augroup("autosave_on_blur", { clear = true }),
  callback = safe_write,
})

-- Optional: also save when leaving insert mode (good for terminal focus change not detected)
vim.api.nvim_create_autocmd("InsertLeave", {
  group = vim.api.nvim_create_augroup("autosave_on_insertleave", { clear = true }),
  callback = safe_write,
})

-- Optional: save on FocusLost (GUI/terminal supports)
vim.api.nvim_create_autocmd("FocusLost", {
  group = vim.api.nvim_create_augroup("autosave_on_focuslost", { clear = true }),
  callback = safe_write,
})
