-- init.lua
-- Configuración mínima de Neovim con lazy.nvim

-- =========================
-- Lazy.nvim bootstrap
-- =========================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- última versión estable
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- =========================
-- Configuración general
-- =========================
vim.g.mapleader = " " -- tecla <leader>

-- =========================
-- Configs locales
-- =========================
require("config.options") -- opciones básicas
require("config.keymaps") -- atajos de teclado
require("config.plugins") -- plugins

require("config.java") -- plugins
