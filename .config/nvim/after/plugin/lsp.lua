local lsp = require('lsp-zero')
lsp.preset('recommended')

-- Configuration from README
-- lsp.preset({
--   name = 'minimal',
--   set_lsp_keymaps = true,
--   manage_nvim_cmp = true,
--   suggest_lsp_servers = false,
-- })

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
