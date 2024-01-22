-- fetch keymap function


local map = vim.api.nvim_set_keymap
-- change leader key 
vim.g.mapleader = " "
-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})
map('n', '<C-s>', [[:w<CR>]], {}) --CTRL+s save the file

-- map the key in insertmode
map('i', '<jk>', [[<ESC>]], {}) -- j-j change in Normal mode

-- Nvim-dap keymappings
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
-- CTRL+d i will debugmode and remove NvimTree 
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui'.toggle()<CR>]],{})
-- Debugging Keys
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil,nil,vim.fn.input('Log Point Msg: '<CR>]], {})
map('n', '<F10>', [[:lua require'dap'.step_over()<CR>]], {})
map('n', '<F11>', [[:lua require'dap'.step_into()<CR>]], {})
map('n', '<F12>', [[:lua require'dap'.step_out()<CR>]], {})
map('n', '<F6>', [[:lua require'dap'.repl.open()<CR>]], {})
map('n', '<dl>', [[:lua require'dap'.run_last()<CR>]], {})



