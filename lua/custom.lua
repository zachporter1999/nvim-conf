--[[
-- Custom values
-- by: Zach
--
-- If any device specific settings must be set, 
-- require this file in the init.lua. From here 
-- require any files withing custom/. All files
-- in custom/ will not be synced to git. 
--]]

-- ========================================
-- Helper Functions
-- ========================================

function combine_lists(base_list, custom_list)
    if (custom_list) then
        for k,v in pairs(custom_list) do
            table.insert(base_list, v)
        end
    end
end

-- ========================================
-- Loading of files
-- ========================================

-- example
-- require('custom/example')


    
