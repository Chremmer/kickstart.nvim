vim.pack.add({ 'https://github.com/mkwpaul/tfvc.nvim' })
---@type tfvc.user_vars
require('tfvc').setup {
  debug = false,
  default_versionspec = 'T',
  diff_no_split = false,
  diff_open_folds = false,
  filter_status_by_cwd = true,
  history_entry_limit = 300,
  history_open_cmd = 'edit',
  diff_open_cmd = 'vsplit',
  version_control_web_url = 'https://aashtobrdr.visualstudio.com/BrDR',
}

local version_control_web_url_base = 'https://aashtobrdr.visualstudio.com/BrDR'

vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
  
  pattern = { 'D:\\Brdr\\*\\BrDRDev*' },
  callback = function(ev)
    ---@type tfvc.user_vars
    vim.g.tfvc = { version_control_web_url = version_control_web_url_base .. 'Dev\\BrDRDev790' }
  end
})
