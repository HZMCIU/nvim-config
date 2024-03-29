local M = {}
function M.config()
    -- Utilities for creating configurations
    local util = require "formatter.util"
    
    -- Provides the Format and FormatWrite commands
    require('formatter').setup {
      -- All formatter configurations are opt-in
      filetype = {
        cpp = {
          -- Pick from defaults:
          require('formatter.filetypes.cpp').clangformat,
    
          -- ,or define your own:
          function()
            return {
              exe = "clangformat",
              args = {
                "-assume-filename",
                util.escape_path(util.get_current_buffer_file_name()),
                "-style='{BasedOnStyle: Google}'"
              },
              stdin = true,
            }
          end
        },
        c = {
          -- Pick from defaults:
          require('formatter.filetypes.c').clangformat,
    
          -- ,or define your own:
          function()
            return {
              exe = "clangformat",
              args = {
                "-assume-filename",
                util.escape_path(util.get_current_buffer_file_name()),
                "-style='{BasedOnStyle: Google}'"
              },
              stdin = true,
            }
          end
        },
        python = {
          -- Pick from defaults:
          -- require('formatter.filetypes.python').yapf,
    
          -- ,or define your own:
          function()
            return {
              exe = "python3 -m yapf",
              args = {
                util.escape_path(util.get_current_buffer_file_name()),
                -- --style='{based_on_style: pep8, indent_width: 2}'
                "--style='{based_on_style: google, indent_width: 2}'"
              },
              stdin = true,
            }
          end
        },
        json = {
          function()
            return {
              exe = "jq",
              args = {
                ".",
              },
              stdin = true,
              -- try_node_modules = true,
            }
          end
        },
        rust = {
          function()
            return {
              exe = "rustfmt",
              stdin = true,
            }
          end
        }, 
        javascript = {
          function()
            return {
              exe = "prettierd",
              args = {vim.api.nvim_buf_get_name(0)},
              stdin = true
            }
          end
        }, 
      }
    }
end
return M
