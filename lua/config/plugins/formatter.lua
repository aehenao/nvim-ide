return {
  "mhartington/formatter.nvim",
  config = function()
    require('formatter').setup({
      logging = false,
      filetype = {
        javascript = {
          -- prettierd
          function()
            return {
              exe = "js-beautify",
              --args = {vim.api.nvim_buf_get_name(0)},
              stdin = true,
              try_node_modules = true,
            }
          end
        },

        php = {
          function()
            return {
              exe = "php-cs-fixer",
              args = {
                "fix",
              },
              stdin = false,
              ignore_exitcode = true,
            }
          end
        },

        ts = {
          function()
            return {
              exe = "tsfmt",
              args = {
                "--stdin",
                "--baseDir",
                util.escape_path(util.get_cwd()),
              },
              stdin = true,
              try_node_modules = true,
              exe = "prettierd",
              args = {vim.api.nvim_buf_get_name(0)},
              stdin = true
            }
          end
        },
        -- other formatters ...
      }
    })
  end,
}
