if not vim.g._vimrc_loaded then
  vim.g._vimrc_loaded = true
  vim.cmd("source ~/.vimrc")
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if vim.fn.isdirectory(lazypath) == 0 then
  vim.fn.system({ "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "neovim/nvim-lspconfig",
  "ibhagwan/fzf-lua",
  "tpope/vim-fugitive",
})

vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"

local cmd = vim.api.nvim_create_user_command
cmd("F", "FzfLua files",     {})
cmd("R", "FzfLua live_grep",  {})
cmd("S", "FzfLua blines",     {})
cmd("B", "FzfLua buffers",    {})
cmd("H", "FzfLua oldfiles",   {})
cmd("E", "Explore", {})

vim.keymap.set("n", "K", vim.lsp.buf.hover)

vim.diagnostic.config({
  signs = false,
  underline = false,
})

vim.lsp.config.clangd = { cmd = { "clangd" } }
vim.lsp.enable("clangd")


vim.cmd("colorscheme desert")
local hl = vim.api.nvim_set_hl
hl(0, "Normal",      { bg = "none" })
hl(0, "NormalFloat",  { bg = "none" })
hl(0, "NonText",      { bg = "none" })
hl(0, "EndOfBuffer",  { bg = "none" })
hl(0, "SignColumn",   { bg = "none" })
hl(0, "LineNr",       { bg = "none" })
hl(0, "markdownError", { link = "Normal" })

vim.opt.hlsearch = true
vim.opt.incsearch = false

-- Don't auto-wrap text or comments as you type; textwidth still works with gq
-- Don't auto-insert comment leaders on Enter or o/O
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "t", "c", "r", "o" })
  end,
})

vim.keymap.set("n", "<C-]>", vim.lsp.buf.definition)

-- Terminal navigation
vim.keymap.set('t', '<C-w>h', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<C-w>j', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<C-w>k', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<C-w>l', '<C-\\><C-n><C-w>l')

-- Don't remove syntax highlighting for #ifdef stuff
vim.g.c_no_if0 = 1

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "clangd" then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end,
})
