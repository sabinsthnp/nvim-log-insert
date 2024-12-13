-- lua/nvim-log-insert/init.lua

local M = {}

M.setup = function()
  vim.keymap.set('n', '<leader>log', function()
    -- Get the current filename (e.g., 'page.tsx')
    local file_name = vim.fn.expand('%:t')
    -- Get the current line number
    local line_number = vim.fn.line('.')
    -- Get the current variable or function name under the cursor
    local variable_name = vim.fn.expand('<cword>')
    -- Check if you're inside a function and get its name (optional)
    local func_name = vim.b.lsp_current_function or 'anonymous'
    -- Construct the log statement
    local log_statement = string.format(
      "console.log('🚀 🐞 ~ file: %s:%d ~ %s ~ %s:', %s);",
      file_name,
      line_number,
      func_name,
      variable_name,
      variable_name
    )
    -- Insert the log statement on the next line
    vim.api.nvim_put({ log_statement }, 'l', true, true)
  end, { desc = 'Insert detailed console.log statement' })
end

return M
