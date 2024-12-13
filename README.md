# nvim-log-insert
Auto insert console log in nvim with leader log

A simple Neovim plugin for inserting detailed `console.log` statements in JavaScript/TypeScript files.

It basicaly  
console.log('🚀 🐞 ~ file: app.js:10 ~ anonymous ~ myVar:', myVar); 😉 when you type < leader >log


## Installation

Using Lazy.nvim:

```lua
return {
  "sabinsthnp/nvim-log-insert",
  config = function()
    require("nvim-log-insert").setup()
  end,
},
```

Using Packer.nvim:
```lua
use {
  "sabinsthnp/nvim-log-insert", 
  config = function()
    require("nvim-log-insert").setup()
  end,
}
```

Manual Installation
```
git clone https://github.com/sabinsthnp/nvim-log-insert ~/.config/nvim/pack/plugins/start/log-insert.nvim
```
require("log-insert").setup()

Fork this
```
git checkout -b feature/new-feature
```
i am all ears
