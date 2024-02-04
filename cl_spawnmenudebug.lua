cl_spawnmenudebug.lua

function spawnmenudebug123()
for _, tool in ipairs( spawnmenu.GetTools() ) do
    for _, category in ipairs( tool.Items ) do
        print( category.Text ) 

        for _, item in ipairs( category ) do
            print( item.Text ) 
        end
    end
end
for k, v in SortedPairsByMemberValue( spawnmenu.GetCreationTabs(), "Order" ) do
    PrintTable( v )
    print( k ) 
end
end

concommand.Add("spawnmenudebug123", spawnmenudebug123)
