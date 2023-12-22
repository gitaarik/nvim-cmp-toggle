local function toggle_autocomplete()
  local cmp = require('cmp')
  local current_setting = cmp.get_config().completion.autocomplete
  if current_setting and #current_setting > 0 then
    cmp.setup({ completion = { autocomplete = false } })
    vim.notify('Autocomplete disabled')
  else
    cmp.setup({ completion = { autocomplete = { cmp.TriggerEvent.TextChanged } } })
    vim.notify('Autocomplete enabled')
  end
end

vim.api.nvim_create_user_command('NvimCmpToggle', toggle_autocomplete, {})

-- Set a keymap like this for example:
-- vim.api.nvim_set_keymap('n', '<Leader>a', ':NvimCmpToggle<CR>', { noremap = true, silent = true })
