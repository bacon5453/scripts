-- Gui to Lua
-- Version: 3.2

-- Instances:

local Loader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local MainFrame = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local Runscript = Instance.new("TextButton")
local GameName = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")

--Properties:

Loader.Name = "Loader"
Loader.Parent = game.CoreGui
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Loader
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Frame.BorderColor3 = Color3.fromRGB(52, 52, 52)
Frame.Position = UDim2.new(0.351572365, 0, 0.303439796, 0)
Frame.Size = UDim2.new(0, 430, 0, 26)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 82, 48)
Frame_2.BorderColor3 = Color3.fromRGB(255, 82, 48)
Frame_2.Size = UDim2.new(0, 430, 0, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(0.0109999999, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 145, 0, 26)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Bacon Hub Loader"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

MainFrame.Name = "MainFrame"
MainFrame.Parent = Frame
MainFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
MainFrame.BorderColor3 = Color3.fromRGB(38, 38, 38)
MainFrame.Position = UDim2.new(0, 0, 1, 0)
MainFrame.Size = UDim2.new(0, 430, 0, 242)

Frame_3.Parent = MainFrame
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.ClipsDescendants = true
Frame_3.Position = UDim2.new(0.065314211, 0, 0.548077404, 0)
Frame_3.Size = UDim2.new(0, 370, 0, 24)
Frame_3.Visible = false

Frame_4.Parent = Frame_3
Frame_4.BackgroundColor3 = Color3.fromRGB(21, 150, 21)
Frame_4.BorderColor3 = Color3.fromRGB(21, 150, 21)
Frame_4.Size = UDim2.new(0, 0, 0, 35)

Runscript.Name = "Runscript"
Runscript.Parent = MainFrame
Runscript.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Runscript.BorderColor3 = Color3.fromRGB(75, 75, 75)
Runscript.Position = UDim2.new(0.374418586, 0, 0.733139932, 0)
Runscript.Size = UDim2.new(0, 107, 0, 29)
Runscript.Visible = false
Runscript.Font = Enum.Font.SourceSans
Runscript.Text = "Load Script"
Runscript.TextColor3 = Color3.fromRGB(255, 255, 255)
Runscript.TextSize = 18.000

GameName.Name = "GameName"
GameName.Parent = MainFrame
GameName.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
GameName.BorderColor3 = Color3.fromRGB(38, 38, 38)
GameName.Position = UDim2.new(0.26699999, 0, 0.330000013, 0)
GameName.Size = UDim2.new(0, 200, 0, 39)
GameName.Font = Enum.Font.SourceSans
GameName.Text = ""
GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
GameName.TextSize = 19.000

Status.Name = "Status"
Status.Parent = MainFrame
Status.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Status.BorderColor3 = Color3.fromRGB(38, 38, 38)
Status.Position = UDim2.new(0.26699999, 0, 0.170000002, 0)
Status.Size = UDim2.new(0, 200, 0, 34)
Status.Font = Enum.Font.SourceSans
Status.Text = ""
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 19.000

-- Scripts:

local function FVXPJI_fake_script() -- Frame.Script 
	local script = Instance.new('LocalScript', Frame)

	
		local gui = script.Parent
		gui.Draggable = true
		
		local LoaderRuning = false
		--local CorrectKey = false
		local SuportedGame = false
		local Ready = false
	
	
	local LoadingFrame = gui.MainFrame.Frame
	LoadingFrame.Visible = true
	
	local Games = {--[[606849621,
		286090429,]]
		155615604}
	
	
	function GetSuportedGame()
		for i,v in next,Games do
			if game.PlaceId == v then
			warn(v)
		return true
			end
			end
		end
	
		function runscript(a)
			if a == 606849621 then
			gui:Destroy()
		else
			if a == 286090429 then
			gui:Destroy()
			else
				if a == 155615604 then
					loadstring(game:HttpGet("google.com"))()
				end
			end
			end
		end
	
	
	
	function gamename()
			if game.PlaceId == 0 then
			script.Parent.MainFrame.GameName.Text = "test"
		else
			if game.PlaceId == 286090429 then
				script.Parent.MainFrame.GameName.Text = "Arsenal"
			else
				if game.PlaceId == 606849621 then
					script.Parent.MainFrame.GameName.Text = "Jailbreak"
				else
					if game.PlaceId == 155615604 then
						script.Parent.MainFrame.GameName.Text = "Prison Life"
					end
			end
		end
		end
	end
	
		
		script.Parent.MainFrame.Runscript.MouseButton1Click:Connect(function()
		runscript(game.PlaceId)
		end)
		
		local time = 1
		local loadtime = 1
		
	    script.Parent.MainFrame.Status.Text = "loading..."
		script.parent.MainFrame.Frame.Frame:TweenSize(UDim2.new(0, 100,0, 48),'In' ,'Quad',time,false,nil)
		repeat wait() until script.parent.MainFrame.Frame.Frame.Size == UDim2.new(0, 100,0, 48)
		LoaderRuning = true
		wait(loadtime)
	   --[[ script.Parent.MainFrame.Status.Text = "Checking key..."
		script.parent.MainFrame.Frame.Frame:TweenSize(UDim2.new(0, 188,0, 48),'In' ,'Quad',time,false,nil)
		repeat wait() until script.parent.MainFrame.Frame.Frame.Size == UDim2.new(0, 188,0, 48)]]
		CorrectKey = true
		wait(loadtime)
	    script.Parent.MainFrame.Status.Text = "Checking game..."
		script.parent.MainFrame.Frame.Frame:TweenSize(UDim2.new(0, 282,0, 48),'In' ,'Quad',time,false,nil)
	repeat wait() until script.parent.MainFrame.Frame.Frame.Size == UDim2.new(0, 282,0, 48)
	
	SuportedGame = true
		wait(loadtime)
	if GetSuportedGame() then
		script.Parent.MainFrame.Status.Text = "Ready to load"
	    script.parent.MainFrame.Frame.Frame:TweenSize(UDim2.new(0, 370,0, 48),'In' ,'Quad',time,false,nil)
		repeat wait() until script.parent.MainFrame.Frame.Frame.Size == UDim2.new(0, 370,0, 48)
	
	end
	Ready = true
	
	
		repeat wait() until SuportedGame == true
	if Ready then
			if GetSuportedGame() == true then
		
				gamename()
			script.Parent.MainFrame.Runscript.Visible = true
		
		else
			gui.MainFrame.Status.Visible = false
			script.Parent.MainFrame.GameName.Text = "No Game Detected"
			script.Parent.MainFrame.Frame.Frame.BackgroundColor3 = Color3.fromRGB(222, 0, 0)
			script.Parent.MainFrame.Frame.Frame.BorderColor3 = Color3.fromRGB(222, 0, 0)
			--script.parent.MainFrame.Frame.Frame:TweenSize(UDim2.new(0, 370,0, 48),'In' ,'Quad',time,false,nil)
		end
	end
end
coroutine.wrap(FVXPJI_fake_script)()
