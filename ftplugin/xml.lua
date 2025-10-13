local fmt = require("utils.fmt")
fmt.buf_tabify()
-- use an external formatter only if there is a local configuration for it
fmt.buf_try_use({ "dprint", "prettier" }, true) -- only if configured
-- or fall back to treesitter which is good enough for this filetype

