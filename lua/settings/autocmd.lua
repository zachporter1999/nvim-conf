-- [[
-- Autocmd cfg
-- ]]

local disable_startify_winnew = 1


-- Toggle autobuffer off
if (not disable_startify_winnew) then
    vim.api.nvim_create_autocmd("WinNew", {
        callback = function()
            print("Opened new buffer")
            vim.cmd [[ Startify ]]
        end,
    })
end

vim.api.nvim_create_autocmd("TabNew", {
    callback = function()
        print("Opened New Tab")
        vim.cmd [[ Startify ]]
    end,
})
