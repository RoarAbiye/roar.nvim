local augroup = vim.api.nvim_create_augroup('fmt', { clear = true })
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.css' },
  group = augroup,
  callback = function()
    -- vim.cmd 'undojoin'
    vim.cmd 'Neoformat'
  end,
})
