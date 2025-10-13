local git = require("utils.git")
-- header
vim.g.netrw_banner = 0

-- ignored files
local common_ignored_files = { '.git', '.svn', '.hg', 'CVS', '.DS_Store', '.Thumbs.db', 'Desktop.ini',
    'Session.vim' }
--local git_ignored_files = git.get_ignored_files()
local git_ignored_files = nil -- too slow, see https://groups.google.com/g/vim_use/c/xXj6aQtlXlk/m/kJ5Euq7QAQAJ
if git_ignored_files ~= nil and #git_ignored_files > 0 then
    vim.g.netrw_list_hide = '^\\V./,' .. string.gsub(
        string.gsub(
            string.gsub(
                table.concat(common_ignored_files, '$') .. '$' ..
                table.concat(git_ignored_files, '$'),
                '%.',
                '\\.'
            ),
            ',',
            '\\,'
        )
        , '%$', '$,'
    ) .. '$'
else
    vim.g.netrw_list_hide = '^\\V./,' .. string.gsub(
        string.gsub(
            string.gsub(
                table.concat(common_ignored_files, '$'),
                '%.',
                '\\.'
            ),
            ',',
            '\\,'
        )
        , '%$', '$,'
    ) .. '$'
end

