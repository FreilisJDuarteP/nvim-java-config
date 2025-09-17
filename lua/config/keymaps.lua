
-- keymaps.lua
-- Atajos de teclado personalizados

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- =========================
-- Guardar y salir
-- =========================
map("n", "<C-s>", ":w<CR>", { desc = "Guardar archivo", unpack(opts) })
map("n", "<C-q>", ":q<CR>", { desc = "Cerrar ventana", unpack(opts) })
map("n", "<leader>w", ":w<CR>", { desc = "Guardar archivo", unpack(opts) })
map("n", "<leader>q", ":q<CR>", { desc = "Cerrar ventana", unpack(opts) })

-- =========================
-- Explorador de archivos
-- =========================
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Abrir explorador", unpack(opts) })

-- =========================
-- Telescope (búsqueda rápida)
-- =========================
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Buscar archivos", unpack(opts) })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Buscar texto en proyecto", unpack(opts) })
map("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Buscar buffers", unpack(opts) })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Buscar ayuda", unpack(opts) })

-- =========================
-- Navegación entre buffers
-- =========================
map("n", "<S-l>", ":BufferLineCycleNext<CR>", { desc = "Siguiente buffer", unpack(opts) })
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", { desc = "Anterior buffer", unpack(opts) })
map("n", "<leader>c", ":bdelete<CR>", { desc = "Cerrar buffer", unpack(opts) })

-- =========================
-- Terminal flotante
-- =========================
map("n", "<leader>tt", ":ToggleTerm<CR>", { desc = "Abrir terminal flotante", unpack(opts) })
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Salir del modo terminal", unpack(opts) })

-- =========================
-- Java (compilar / ejecutar)
-- =========================
-- Compilar el archivo actual
map("n", "<leader>C", ":!javac %<CR>", { desc = "Compilar archivo Java", unpack(opts) })

-- Ejecutar el archivo actual (usa el directorio del archivo como classpath)
map("n", "<leader>R", ":!java -cp %:p:h %:t:r<CR>", { desc = "Ejecutar archivo Java", unpack(opts) })
