local M = {}

function M.config()
  require('bufferline').setup {
    options = {
        numbers = "buffer_id"
        -- numbers = function(opts)
        --   return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
        -- end
    }
}
end

return M
