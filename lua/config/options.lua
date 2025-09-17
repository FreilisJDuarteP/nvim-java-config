
-- options.lua
-- Opciones básicas de Neovim

local opt = vim.opt

-- Numeración
opt.number = true             -- mostrar número de línea
opt.relativenumber = true     -- números relativos

-- Identación
opt.tabstop = 4               -- número de espacios que equivale una tab
opt.shiftwidth = 4            -- número de espacios al indentar
opt.expandtab = true          -- convierte tabs en espacios
opt.smartindent = true        -- indenta automáticamente

-- Interfaz
opt.termguicolors = true      -- habilita colores 24bit
opt.cursorline = true         -- resalta la línea actual
opt.signcolumn = "yes"        -- siempre mostrar columna de signos
opt.wrap = false              -- no hacer wrap de líneas largas

-- Portapapeles
opt.clipboard = "unnamedplus" -- usa el portapapeles del sistema

-- Búsqueda
opt.ignorecase = true         -- ignora mayúsculas en búsqueda
opt.smartcase = true          -- diferencia mayúsculas si se usan en la búsqueda
opt.hlsearch = false          -- no resaltar todas las coincidencias

-- Desempeño
opt.updatetime = 300          -- actualiza rápido (para LSP y plugins)
opt.timeoutlen = 500          -- tiempo de espera para combinaciones de teclas
