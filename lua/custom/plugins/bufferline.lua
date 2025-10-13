-- return {
--   {
--     'akinsho/bufferline.nvim',
--     dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
--     version = '*', -- use tag = "v3.*" for 0.8 compatibility
--     config = function()
--       require('bufferline').setup {
--         -- Your bufferline configuration options here
--         options = {
--           -- For example:
--           show_buffer_icons = true,
--           hover = {
--             enabled = true,
--             delay = 150,
--             reveal = { 'close' },
--           },
--           offsets = {
--             {
--               filetype = 'neo-tree',
--               text = 'Nvim Tree',
--               separator = true,
--               text_align = 'left',
--             },
--           },
--         },
--       }
--     end,
--   },
-- }

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers', -- 也可以是 "tabs"
        numbers = 'ordinal', -- 显示序号
        close_command = 'bdelete! %d', -- 关闭 buffer 的命令
        right_mouse_command = 'bdelete! %d',
        left_mouse_command = 'buffer %d',
        middle_mouse_command = nil,
        indicator = {
          icon = '▎', -- buffer 前的指示符
          style = 'icon',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        diagnostics = 'nvim_lsp', -- 在 buffer 上显示 LSP 诊断信息
        diagnostics_update_in_insert = false,
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            text_align = 'center',
            separator = true,
          },
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = 'slant', -- "slant" | "thick" | "thin"
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { 'close' },
        },
      },
    }
  end,
}
