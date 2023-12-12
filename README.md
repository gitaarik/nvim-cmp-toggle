# `nvim-cmp-toggle`

Toggle auto-completion off/on for `nvim-cmp`. Sometimes it can be overwhelming
to constantly have autosuggestions when you are typing. After installing this
plugin you can use `:NvimCmpToggle` to toggle the completion off/on. When auto
completion is off, you can still trigger it with `nvim-cmp`'s
`cmp.mapping.complete()` function, which is by default mapped to `<C-Space>` in
insert mode in `nvim-cmp`.

You can add a keybinding in your own config, for example:

```lua
vim.api.nvim_set_keymap('n', '<leader>a', ':NvimCmpToggle<CR>', { noremap = true, silent = true })
```
