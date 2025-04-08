-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- NOTE: 
-- 1. python -m venv ~/.nvim_venv
-- 2. source ~/.nvim_venv/bin/activate
-- 3. pip install pynvim
vim.g.python3_host_prog = vim.fn.expand("~/.nvim_venv/bin/python")

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
