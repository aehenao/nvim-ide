if vim.fn.has('unix') == 1 then
  local uname = vim.fn.system('uname')
  if uname == "Darwin\n" then
    vim.opt.guifont = 'RobotoMono Nerd Font'
  else
    vim.opt.guifont = 'JetBrainsMono Nerd Font'
  end
end
