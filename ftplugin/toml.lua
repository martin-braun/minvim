local fmt = require("utils.fmt")
-- use an external formatter only if there is a local configuration for it
if not fmt.buf_try_use({ "dprint", "prettier" }, true) then -- only configured
-- or fall back to treesitter which is good enough for this filetype
