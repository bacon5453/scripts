
function LoadLibraryMain(txt)
if txt == "RbxGui" then
local RbxGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/LoadLibrary/RbxGui.lua"))()
return RbxGui
else
if txt == "RbxStamper" then
local RbxStamper = loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/LoadLibrary/RbxStamper.lua"))()
return RbxStamper
else
if txt == "RbxUtility" then
local RbxUtility = loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/LoadLibrary/RbxUtility.lua"))()
return RbxUtility
end
end
end
end


return LoadLibraryMain