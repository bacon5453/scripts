
local CurrentVersion = "2.0"


while wait(1) do
if game.loaded and game.Players ~= nil and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character.HumanoidRootPart ~= nil  then
break
end
end
print("loaded")

local Ps = game:GetService("Players")
local Rep = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local Funcs = loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/Bacon%20Hub/Scripts/Prison%20Life/Functions.lua", true))()

local LocalPlayer = Ps.LocalPlayer
local LocalChar = LocalPlayer.Character

local Mouse = LocalPlayer:GetMouse()

local Main = {
    Teleporting = false
}






function ToNumber(String)
	return
		(not String or type(String) ~= "string" and (String and type(String) == "number" and String or 0)) or
		tonumber(String) or tonumber(string.match(String, "%-?%d+%.?%d*")) or 0
end


function isTelepoting()
    if Main.Teleporting == true then
return true
else
return false
end
end

function PlayTween(Tween)
    Main.Teleporting = true
    game:GetService("Players").LocalPlayer.Character.KillScript.Disabled = true
    Tween:Play()
    Tween.Completed:wait()
    --print("Done")
    game:GetService("Players").LocalPlayer.Character.KillScript.Disabled = false
    Main.Teleporting = false
end

local tweentpspeed = nil
tweentpspeed = loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/Bacon%20Hub/Scripts/Mad%20City/Settings.lua", true))()

function CalculateTime(Val1, Val2)
    local Resp = (Vector3.new(Val1.X) - Vector3.new(Val2.X)).magnitude + (Vector3.new(Val1.Y) - Vector3.new(Val2.Y)).magnitude + (Vector3.new(Val1.Z) - Vector3.new(Val2.Z)).magnitude
    return Resp / 40
    end

function teleport(CFrame)
if not isTelepoting() then

local time = CalculateTime(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,CFrame)


warn(time)
    --game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    local Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = CFrame})
    
PlayTween(Tween)
    --repeat wait() until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == test
    --game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
end





local script1 = game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript
local script2 = game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript2

function bypass(script)
local LocalScript = script
for i, connection in pairs(getconnections(LocalScript.Changed)) do
    connection:Disable()
end
LocalScript.Disabled = true
end

bypass(script1)
bypass(script2)

local TeleportService = game:GetService("TeleportService")


wait(25)

teleport(game:GetService("Workspace").tower.sections.finish.start.CFrame)

while wait() do
    if not isTelepoting() then
    break
    end
    end


wait(1.5)
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/bacon5453/scripts/main/Obfuscated.lua"))()')
    end
end)
    TeleportService:Teleport(game.PlaceId)
