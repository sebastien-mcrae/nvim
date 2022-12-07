local options = {
  clipboard = "unnamedplus",
  expandtab = true,
  number = true,
  relativenumber = true,
  autoread = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- auto-reload files when modified externally
-- https://unix.stackexchange.com/a/383044
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})
