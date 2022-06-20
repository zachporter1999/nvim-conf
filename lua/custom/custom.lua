-- Custom values

require('custom/bookmarks')

function combine_lists(base_list, custom_list)
    if (custom_list) then
        for k,v in pairs(custom_list) do
            table.insert(base_list, v)
        end
    end
end

    
