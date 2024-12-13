# nvim-log-insert
Auto insert console log in nvim with leader log

A simple Neovim plugin for inserting detailed `console.log` statements in JavaScript/TypeScript files.

## Installation

Using Lazy.nvim:

```lua
return {
  "sabinsthnp/nvim-log-insert",
  config = function()
    require("nvim-log-insert").setup()
  end,
},
