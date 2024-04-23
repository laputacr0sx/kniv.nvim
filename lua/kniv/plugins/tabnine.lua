return {
  {
    'codota/tabnine-nvim',
    build = './dl_binaries.sh',
    config = function()
      require('tabnine').setup {
        disable_auto_comment = true,
        accept_keymap = '<Tab>',
        dismiss_keymap = '<C-]>',
        debounce_ms = 800,
        suggestion_color = { gui = '#93C5FD', cterm = 244 },
        codelens_color = { gui = '#FEF08A', cterm = 244 },
        exclude_filetypes = { 'TelescopePrompt', 'NvimTree' },
        log_file_path = nil, -- absolute path to Tabnine log file
      }
      require('tabnine.status').status()
    end,
  },
}

-- calculate average of an array
--
