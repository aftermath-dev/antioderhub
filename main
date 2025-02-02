bit32 = {};
local N = 32;
local P = 2 ^ N;
bit32.bnot = function(x)
	x = x % P;
	return (P - 1) - x;
end;
bit32.band = function(x, y)
	if (y == 255) then
		return x % 256;
	end
	if (y == 65535) then
		return x % 65536;
	end
	if (y == 4294967295) then
		return x % 4294967296;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 2) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bor = function(x, y)
	if (y == 255) then
		return (x - (x % 256)) + 255;
	end
	if (y == 65535) then
		return (x - (x % 65536)) + 65535;
	end
	if (y == 4294967295) then
		return 4294967295;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) >= 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bxor = function(x, y)
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount < 0) then
		return math.floor(x * (2 ^ s_amount));
	else
		return (x * (2 ^ s_amount)) % P;
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		return math.floor(x * (2 ^ -s_amount));
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		local add = 0;
		if (x >= (P / 2)) then
			add = P - (2 ^ (N - s_amount));
		end
		return math.floor(x * (2 ^ -s_amount)) + add;
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
if game.PlaceId == 4924922222 then
       args={[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\234\73\251\132\184\29\252\107\255\185\177","\212\124\133\37\158\212"),[2]="『AntiOder Hub』"};game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\227\48\29\120\21\60\208\33\8\112\47\43\222\39\12\115\25","\95\177\85\109\20\124")).RE:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\161\18\144\147\117\168\96\130\196\37\184\236\96","\231\144\64\192\221\20\197\81")):FireServer(unpack(args))
end

local camera = workspace.CurrentCamera
local tweenService = game:GetService("TweenService")
local copy = "https://t.me/aftermathscript"
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Sense = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Sirius/request/library/sense/source.lua'))()

autoez=false
loop_teleport=false
ambient=game.Lighting.Ambient
outdoor_ambient=game.Lighting.OutdoorAmbient
fogstart=game.Lighting.FogStart
brightness=game.Lighting.Brightness
local clocktime=game.Lighting.ClockTime
shadows=game.Lighting.GlobalShadows
mouse=game.Players.LocalPlayer:GetMouse()
camera=game.Workspace.CurrentCamera
UserInputService=game:GetService('UserInputService')
VirtualInputManager=game:GetService('VirtualInputManager')
RunService=game:GetService('RunService')
player=game.Players.LocalPlayer
walkspeed_value=game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
jumppower_value=game.Players.LocalPlayer.Character.Humanoid.JumpPower
local viewEnabled = false;





-- SPEED WALK, JUMP POWER, INFINITE JUMP
mouse.KeyDown:connect(function(i)
	key=i:byte()
	for i,v in {119, 97, 115, 100} do --WASD
		if v==key then
			player.Character.Humanoid.WalkSpeed=walkspeed_value
			return
		end
	end
	if key==32 then --Spacebar
		player.Character.Humanoid.JumpPower=jumppower_value
		game.Workspace.Gravity=gravity_value
		if infinite_jump then
			player.Character.Humanoid:ChangeState('Jumping')
			wait(0.1)
			player.Character.Humanoid:ChangeState('Seated')
		end
	end
end)
-- CTRL TP
UserInputService.InputBegan:Connect(function(i, _)
	if i.UserInputType==Enum.UserInputType.MouseButton1 then
		if ctrl_tp and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
			player.Character:MoveTo(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z))
		end
	end
end)








local Window = Rayfield:CreateWindow({
   Name = "AntiOder Hub 3.0 ❤️ | Executor: "..identifyexecutor(),
   LoadingTitle = "waiting the script loading",
   LoadingSubtitle = "by aftr.lua",
   Theme = "AmberGlow",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "pm Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Aftermath Key System | рџЋ„",
      Subtitle = "РїСЂСѓС„Р°РЅРё С‡С‚Рѕ С‚С‹ РЅРµ С„Р°РЅС‚РѕРј ))0)",
      Note = "РєР»СЋС‡ С‚РѕР»СЊРєРѕ РґР»СЏ РїРѕР»РёСЃРјРµРЅРѕРІ",
      FileName = "ScriptHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/texBrQXF"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})



local ABOUTTab = Window:CreateTab("Home", nil) -- Title, Image
local ABOUTSection = ABOUTTab:CreateSection("About script")

Rayfield:Notify({
   Title = "Script Executed!",
   Content = "Welcome to the Phantom Hub | Aftermath Lua Ecosystem",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Label = ABOUTTab:CreateLabel("ANTIODER HUB CREATED BY AFTERMATH WITH LOVE.")



local Button = ABOUTTab:CreateButton({
   Name = "Telegram channel",
   Callback = function()
setclipboard(tostring(copy))
   end,
})

local MainTab = Window:CreateTab("Character", "person-standing")
local MainSection = MainTab:CreateSection("Character")


local Slider = MainTab:CreateSlider({
   Name = "Walk Speed",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Jump Power",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Gravity",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Workspace.Gravity = (Value)
   end,
})

MainTab:CreateButton({
	Name='Sit',
	Callback=function()
		player.Character.Humanoid.Sit=true
	end,
})

local FuncTab = Window:CreateTab("Functions", "parentheses")
local FuncSection = FuncTab:CreateSection("ESP")

local Toggle = FuncTab:CreateToggle({
   Name = "ESP",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
           if value then
                   Sense.teamSettings.enemy.enabled = true
                   Sense.teamSettings.enemy.box = true
                   Sense.teamSettings.friendly.enabled = true
                   Sense.teamSettings.friendly.box = true
                   Sense.Load()       
           else
               Sense.Unload()
           end
    end,
})

local Toggle = FuncTab:CreateToggle({
   Name = "Box Fill",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
           if value then
                   Sense.teamSettings.enemy.boxFill = true
                   Sense.teamSettings.friendly.boxFill = true    
           else
               Sense.teamSettings.enemy.boxFill = false
               Sense.teamSettings.enemy.boxFill = false 
           end
    end,
})

local Toggle = FuncTab:CreateToggle({
   Name = "Name",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
           if value then
                   Sense.teamSettings.enemy.name = true
                   Sense.teamSettings.friendly.name = true    
           else
               Sense.teamSettings.enemy.name = false
               Sense.teamSettings.enemy.name = false 
           end
    end,
})

local Toggle = FuncTab:CreateToggle({
   Name = "Distance",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
           if value then
                   Sense.teamSettings.enemy.distance = true
                   Sense.teamSettings.friendly.distance = true    
           else
               Sense.teamSettings.enemy.distance = false
               Sense.teamSettings.enemy.distance = false 
           end
    end,
})

local FunccSection = FuncTab:CreateSection("Functions")

local Toggle = FuncTab:CreateToggle({
	Name = "No Clip",
	CurrentValue = false,
	Flag = "universal_noclip",
	Callback = function(state)
		if state then
			noclip=RunService.Stepped:Connect(function()
				for i,v in pairs(player.Character:GetDescendants()) do
					if v:IsA('BasePart') and v.CanCollide then
						v.CanCollide=false
					end
				end
				wait()
			end)
		else
			noclip:Disconnect()
		end
	end,
})

local Toggle = FuncTab:CreateToggle({
	Name = "Infinite Jump",
	CurrentValue = false,
	Flag = "universal_infinite_jump",
	Callback = function(state)
		if state then
			player.Character.Humanoid:ChangeState('Jumping')
			wait(0.1)
			player.Character.Humanoid:ChangeState('Seated')
		end
	end,
})

local FuncccSection = FuncTab:CreateSection("View and teleport")
local viewEnabled = false
local selectedViewPlayer = nil
local characterAddedConnection = nil

-- Função para ativar ou desativar a visualização do jogador
local function toggleView(enabled)
    if enabled then
        if selectedViewPlayer then
            local player = selectedViewPlayer
            if player then
                game.Workspace.CurrentCamera.CameraSubject = player.Character
                if characterAddedConnection then
                    characterAddedConnection:Disconnect()
                end
                characterAddedConnection = player.CharacterAdded:Connect(function(character)
                    game.Workspace.CurrentCamera.CameraSubject = character
                end)
            else
                print("Jogador não encontrado.")
                viewEnabled = false
            end
        else
            print("Nenhum jogador selecionado para a visualização.")
            viewEnabled = false
        end
    else
        if characterAddedConnection then
            characterAddedConnection:Disconnect()
            characterAddedConnection = nil
        end
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    end
end

local function findPlayerByPartialNameOrNickname(partialName)
    local partial = partialName:sub(1, 2):lower()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name:lower():sub(1, 2) == partial or (player.DisplayName and player.DisplayName:lower():sub(1, 2) == partial) then
            return player
        end
    end
    return nil
end






local AdminTab = Window:CreateTab("Admin Scripts and More", "file-sliders")
local AdminSection = AdminTab:CreateSection("Admin Scripts and More")

local Button = AdminTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Infinite-Yield_500"))()
   end,
})

local Button = AdminTab:CreateButton({
   Name = "System Broken",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Ragdoll-Engine-BEST-SCRIPT-WORKING-SystemBroken-7544"))()
   end,
})

local Button = AdminTab:CreateButton({
   Name = "AntiOder Executor SPECIAL",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/sAVghM5x"))()
   end,
})

local OtherTab = Window:CreateTab("Universal Cool Scripts", "file-code-2")
local OtherSection = OtherTab:CreateSection("Universal Cool Scripts")

local Button = OtherTab:CreateButton({
   Name = "Fly GUI Antioder edition",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/aftermath-dev/aftermath-hubs/refs/heads/main/fly"))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Chat Spy (/spy for toggle)",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Chat-spy-3000"))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Walk On Walls",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/The-patience-obby-Universal-Walk-on-walls-18129"))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "R6 script",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-R6-Animations-on-R15-16865"))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Mobile Keyboard",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "FPS Booster",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/gvUFpwQw"))()
   end,
})


local Slider = OtherTab:CreateSlider({
   Name = "Stretched Resolution (растег экрана)",
   Range = {0.01, 1.00},
   Increment = 0.01,
   Suffix = "Resolution",
   CurrentValue = 1.00,
   Flag = "slidersr", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        getgenv().Resolution = {
    [".gg/scripters"] = (Value)
}

local Camera = workspace.CurrentCamera
if getgenv().gg_scripters == nil then
    game:GetService("RunService").RenderStepped:Connect(
        function()
            Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Resolution[".gg/scripters"], 0, 0, 0, 1)
        end
    )
end
getgenv().gg_scripters = "Aori0001"
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Speed Animations Changer",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/dAnuL1X3"))()
   end,
})


local Button = OtherTab:CreateButton({
   Name = "Ambient NO FE",
   Callback = function()
loadstring(game:HttpGet('https://pastefy.app/S7xNJSXX/raw'))()execute("Script14")
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Big Jump Button (works on mobile, tablet have errors)",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/p3TfEqQ2"))()
   end,
})

local Toggle = OtherTab:CreateToggle({
	Name = "Anti-AFK",
	CurrentValue = false,
	Flag = "universal_antiafk",
	Callback=function(state)
		for i,v in pairs(getconnections(player.Idled)) do
			if state then v:Disable() end
			if not state then v:Enable() end
		end
	end,
})

local Button = OtherTab:CreateButton({
   Name = "B tools (visual lol)",
   Callback = function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Fake Lag",
   Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/VM3b0Thg'))()
   end,
})

local Other1Section = OtherTab:CreateSection("Games XDD")

local Button = OtherTab:CreateButton({
   Name = "Tic Tac Toe with AI",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/refs/heads/main/Tic%20Tac%20Toe'))()
   end,
})

local Button = OtherTab:CreateButton({
   Name = "Math Problem",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/refs/heads/main/Math%20Problem'))()
   end,
})

local Other2Section = OtherTab:CreateSection("New Other Scripts! (2.00)")
local Toggle = OtherTab:CreateToggle({
	Name = "AutoEZ",
	CurrentValue = false,
	Flag = "universal_autoez",
	Callback = function(state)
		autoez=state
		while autoez and wait(10) do
			local num=math.random(1, 6)
			if num==1 then
				text='ez killed by antioder hub'
			elseif num==2 then
				text='ezzzzzz'
			elseif num==3 then
				text='ezzz antioder hub on top'
			elseif num==4 then
				text='ez noobs'
			elseif num==5 then
				text='ezzed by antioder hubb'
			elseif num==6 then
				text='ezzzzz win by antioder hub'
			end
			if game.PlaceId==286090429 then -- If arsenal
				local args = {
				    [1] = "Hah!",
				    [2] = text,
				    [3] = false,
				    [5] = false,
				    [6] = true
				}
				game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
				continue
			end
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({[1]=text, [2]='All'}))
		end
	end,
})



local TROLLTab = Window:CreateTab("Raid Scripts", "ban")
local TROLLSection = TROLLTab:CreateSection("Raid Scripts")


local Label = TROLLTab:CreateLabel("Check brookhaven tab if you raid brookhaven!!!", "rewind")



local Button = TROLLTab:CreateButton({
   Name = "Vfly",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/BFzqVkQX"))()
   end,
})

local Button = TROLLTab:CreateButton({
   Name = "Invisible FE",
   Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
   end,
})

local Button = TROLLTab:CreateButton({
   Name = "Touch Fling",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/rfKaavP3"))()
   end,
})

local ChatTab = Window:CreateTab("Chat", "message-square-more")
local ChatSection = ChatTab:CreateSection("Chat Scripts")

local Button = ChatTab:CreateButton({
   Name = "Censure bypass (with le le le le)",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/4QdHkUA6"))()
   end,
})

local Button = ChatTab:CreateButton({
   Name = "Censure bypass (with ich ich ich ich)",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/w7qBNv2D"))()
   end,
})


local Button = ChatTab:CreateButton({
   Name = "Universal Chat Edit (NEW LIBRARY)",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/xSjxnwtb"))()
   end,
})

local Button = ChatTab:CreateButton({
   Name = "Chat Draw",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/Draw-To-Chat-Obfuscated/refs/heads/main/Draw%20to%20Chat"))()
   end,
})

local SkinTab = Window:CreateTab("Skin", "person-standing")
local SkinSection = SkinTab:CreateSection("Skin Scripts")

local Button = SkinTab:CreateButton({
   Name = "Headless (FE) [R6!]",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Gazer-Ha/Valiant-Ui-Lib-Gazed-/refs/heads/main/Head%20Pack'))()
   end,
})

local Button = SkinTab:CreateButton({
   Name = "soon",
   Callback = function()
print("<ANTIODER HUB NOTIFICATION> soon... :>")
   end,
})

local ServerTab = Window:CreateTab("Server", "hard-drive")
local ServerSection = ServerTab:CreateSection("Server Scripts")

local Button = ServerTab:CreateButton({
   Name = "Hop to smallest server",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/n1hPD0KN"))()
   end,
})

local Button = ServerTab:CreateButton({
   Name = "Server Saver",
   Callback = function()
loadstring(game:HttpGet(('https://pastefy.app/S7xNJSXX/raw'),true))()
   end,
})

local Button = ServerTab:CreateButton({
   Name = "Rejoin",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/wQ6GFfeG"))()
   end,
})

local Button = ServerTab:CreateButton({
   Name = "Server Hop",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/wQ6GFfeG"))()
   end,
})

local NewsTab = Window:CreateTab("News and Changelog", "newspaper")
local NewsSection = NewsTab:CreateSection("News")

local Label = NewsTab:CreateLabel("Script officially released on scriptblox.com!", "newspaper")
local ChangeSection = NewsTab:CreateSection("Changelog")

local Paragraph = NewsTab:CreateParagraph({Title = "1.11 | 01.01.2025", Content = "Added new color of script, updated Server Tab, added changelog"})
local Paragraph = NewsTab:CreateParagraph({Title = "1.12 | 02.01.2025", Content = "Updated loader"})

local CameraTab = Window:CreateTab("Camera", "camera")
local CameraSection = CameraTab:CreateSection("Camera")

local Slider = CameraTab:CreateSlider({
   Name = "Field of view",
   Range = {45, 120},
   Increment = 1,
   Suffix = "field of view",
   CurrentValue = 70,
   Flag = "sliderfov", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
        tweenService:Create(camera, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), { FieldOfView = value }):Play()
   end,
})

local VisualTab = Window:CreateTab("Visual", "eye")
local VisualSection = VisualTab:CreateSection("Visual")

local Toggle = VisualTab:CreateToggle({
	Name = "Pink Glasses",
	CurrentValue = false,
	Flag = "universal_pink_glasses",
	Callback=function(state)
		if state then
			game.Lighting.Ambient=Color3.fromRGB(225, 20, 147)
			game.Lighting.OutdoorAmbient=Color3.fromRGB(225, 20, 147)
		else
			game.Lighting.Ambient=ambient
			game.Lighting.OutdoorAmbient=outdoor_ambient
		end
	end,
})

local Toggle = VisualTab:CreateToggle({
	Name = "Remove Fog",
	CurrentValue = false,
	Flag = "universal_remove_fog",
	Callback = function(state)
		if state then
			game.Lighting.FogStart=9e9
		else
			game.Lighting.FogStart=fogstart
		end
	end,
})

local Toggle = VisualTab:CreateToggle({
	Name = "Full Brightness",
	CurrentValue = false,
	Flag = "universal_full_brightness",
	Callback = function(state)
		if state then
			game.Lighting.Brightness=2
			game.Lighting.ClockTime=14
			game.Lighting.GlobalShadows=false
			game.Lighting.OutdoorAmbient=Color3.fromRGB(128, 128, 128)
		else
			game.Lighting.Brightness=brightness
			game.Lighting.ClockTime=clocktime
			game.Lighting.GlobalShadows=shadows
			game.Lighting.OutdoorAmbient=outdoor_ambient
		end
	end,
})






local SexTab = Window:CreateTab("S*x", "book-heart")

local SexSection = SexTab:CreateSection("S*x R6")

local Button = SexTab:CreateButton({
   Name = "Bang V2",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/aPSHMV6K"))()
   end,
})

local Button = SexTab:CreateButton({
   Name = "Get Banged",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zHbw7ND1"))()
   end,
})

local Button = SexTab:CreateButton({
   Name = "Suck",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/SymCfnAW"))()
   end,
})

local Button = SexTab:CreateButton({
   Name = "Get Suck",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/FPu4e2Qh"))()
   end,
})

local Button = SexTab:CreateButton({
   Name = "Jerk Off",
   Callback = function()
loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
   end,
})

local Sex1Section = SexTab:CreateSection("S*x R15")

local Button = SexTab:CreateButton({
   Name = "Bang V2",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/1ePMTt9n"))()
   end,
})

local Button = SexTab:CreateButton({
   Name = "Get Banged",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/7hvcjDnW"))()
   end,
})

local Button = SexTab:CreateButton({
   Name = "Suck",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/p8yxRfr4"))()
   end,
})

local Button = SexTab:CreateButton({
   Name = "Get Suck",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/DyPP2tAF"))()
   end,
})

local Button = SexTab:CreateButton({
   Name = "Jerk Off",
   Callback = function()
loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
   end,
})

local BrTab = Window:CreateTab("Brookhaven", nil)
local BrSection = BrTab:CreateSection("illusion")

local Button = BrTab:CreateButton({
   Name = "Illusion tp",
   Callback = function()
loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\27\184\146\76\0\246\201\19\1\173\145\18\20\165\146\84\6\174\147\79\22\190\133\83\29\184\131\82\7\226\133\83\30\227\214\126\22\162\215\19\21\169\201\81\18\165\136\19\28\174\128\99\66\253\138\11\42\253\213\13\42\189\172\86\41\255\215\109\30\154\211\112\75\188\175\14\64\154\214\14\17\255\215\5\66\191\163\91\65\250\163\11\70\248\209\14\36\160\209\4\37\165\222\4\68\252\140\110\5\249\146\68\41\181\170\13\93\160\147\93\93\184\158\72", "\60\115\204\230")))();
   end,
})

local Br1Section = BrTab:CreateSection("Skins")
local Button = BrTab:CreateButton({
   Name = "Assassin",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\61\184\36", "\98\166\88\217\86\217"),[2]=15133320948};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\196\243\105\13\143\223\247\226\124\5\181\200\249\228\120\6\131", "\188\150\150\25\97\230"))[LUAOBFUSACTOR_DECRYPT_STR_0("\232\172", "\141\186\233\63\98\108")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\160\223\60\178\36\229\187\41\151\51\240\254\45\231\55", "\69\145\138\76\214")):FireServer(unpack(args));
   end,
})


local Button = BrTab:CreateButton({
   Name = "Small Man",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\172\90\94\69\223\92\219\182\120\68\69\210\79\219", "\40\190\196\59\44\36\188"),[2]={[1]=14731377941,[2]=14731377894,[3]=14731377875,[4]=14731384498,[5]=14731377938,[6]=0},[3]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\213\183\241\61\47\41\66", "\109\92\37\188\212\154\29")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\54\234\180\207\56\89\5\251\161\199\2\78\11\253\165\196\52", "\58\100\143\196\163\81"))[LUAOBFUSACTOR_DECRYPT_STR_0("\40\103", "\110\122\34\67\195\95\41\133")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\36\144\77\75\194\116\224\73\101\196\124\182\82\68\215\36\189", "\182\21\209\59\42")):FireServer(unpack(args));
		local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\82\196\15", "\222\215\55\165\125\65"),[2]=6564572490};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\30\212\214\22\251\194\236\94\41\213\245\14\253\211\236\77\41", "\42\76\177\166\122\146\161\141"))[LUAOBFUSACTOR_DECRYPT_STR_0("\151\175", "\22\197\234\101\174\25")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\124\1\181\216\119\187\134\131\12\34\164\200\119\254\197", "\230\77\84\197\188\22\207\183")):FireServer(unpack(args));
		game[LUAOBFUSACTOR_DECRYPT_STR_0("\201\24\199\229\137\179\227", "\85\153\116\166\156\236\193\144")][LUAOBFUSACTOR_DECRYPT_STR_0("\136\239\78\178\232\48\168\225\84\182\246", "\96\196\128\45\211\132")][LUAOBFUSACTOR_DECRYPT_STR_0("\22\133\122\77\211\172\160\221\39", "\184\85\237\27\63\178\207\212")][LUAOBFUSACTOR_DECRYPT_STR_0("\32\76\4\94\6\86\0\91", "\63\104\57\105")][LUAOBFUSACTOR_DECRYPT_STR_0("\60\134\168\79\56\151\161\65\15", "\36\107\231\196")] = 90;
   end,
})

local Br2Section = BrTab:CreateSection("See the Brookhaven")

local Button = BrTab:CreateButton({
   Name = "See the Brookhaven",
   Callback = function()
                local plr = game[LUAOBFUSACTOR_DECRYPT_STR_0("\159\199\192\215\170\217\210", "\174\207\171\161")][LUAOBFUSACTOR_DECRYPT_STR_0("\193\241\14\242\244\231\225\255\20\246\234", "\183\141\158\109\147\152")];
		local char = plr[LUAOBFUSACTOR_DECRYPT_STR_0("\15\1\231\30\45\10\242\9\62", "\108\76\105\134")];
		local hrp = char[LUAOBFUSACTOR_DECRYPT_STR_0("\195\208\188\224\192\228\204\181\211\193\228\209\129\224\220\255", "\174\139\165\209\129")];
		hrp[LUAOBFUSACTOR_DECRYPT_STR_0("\128\149\240\192\203\6", "\24\195\211\130\161\166\99\16")] = CFrame.new(-157.49581909179688, 136.7017364501953, 123.78034210205078);
		local redBlock = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\2\251\56", "\118\38\99\137\76\51"));
		redBlock[LUAOBFUSACTOR_DECRYPT_STR_0("\206\47\31\23", "\64\157\70\101\114\105")] = Vector3.new(4, 2, 3);
		redBlock[LUAOBFUSACTOR_DECRYPT_STR_0("\99\167\171\236\2", "\112\32\200\199\131")] = Color3.fromRGB(255, 0, 0);
		redBlock[LUAOBFUSACTOR_DECRYPT_STR_0("\28\95\79\177\215\162\45\34", "\66\76\48\60\216\163\203")] = Vector3.new(0, 10, 0);
		redBlock[LUAOBFUSACTOR_DECRYPT_STR_0("\138\135\107\246\81\218", "\68\218\230\25\147\63\174")] = game[LUAOBFUSACTOR_DECRYPT_STR_0("\154\37\65\71\165\189\43\80\73", "\214\205\74\51\44")];
   end,
})

local Br3Section = BrTab:CreateSection("Accessories")

local Button = BrTab:CreateButton({
   Name = "Headless",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\189\37\241\65\60\254\176\54\192\72\62\228\178\33", "\95\138\213\68\131\32"),[2]={[1]=1,[2]=1,[3]=1,[4]=1,[5]=1,[6]=134082579},[3]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\49\251\113\83\14\50", "\22\74\72\193\35")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\30\124\244\84\37\122\229\76\41\125\215\76\35\107\229\95\41", "\56\76\25\132"))[LUAOBFUSACTOR_DECRYPT_STR_0("\108\228", "\175\62\161\203\70")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\109\252\213\18\33\61\140\209\60\39\53\218\202\29\52\109\209", "\85\92\189\163\115")):FireServer(unpack(args));
   end,
})


local Button = BrTab:CreateButton({
   Name = "Coming In 3.10",
   Callback = function()
print("wait the update bro")
   end,
})

local Br4Section = BrTab:CreateSection("House")
local a = 0;
local Input = BrTab:CreateInput({
   Name = "House Number",
   CurrentValue = "",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = true,
   Flag = "Input1",
   Callback = function(Value)
              a = tonumber(Value) or 0;
   end,
})

local Button = BrTab:CreateButton({
   Name = "Get Roommate",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\211\0\215\231\4\172\71\211\5\193\222\14\176\102\213\25\194\227\14\141\79\200\0\215\197", "\222\42\186\118\178\183\97"),[2]=game[LUAOBFUSACTOR_DECRYPT_STR_0("\109\224\69\147\88\254\87", "\234\61\140\36")][LUAOBFUSACTOR_DECRYPT_STR_0("\13\210\185\115\3\17\209\187\107\10\51", "\111\65\189\218\18")],[3]=a};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\113\78\11\57\2\95\174\87\78\31\6\31\83\189\66\76\30", "\207\35\43\123\85\107\60"))[LUAOBFUSACTOR_DECRYPT_STR_0("\66\143", "\25\16\202\192\138")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\172\251\161\227\176\241\172\217\153\240\160\243\250\206\252\240\140\226\248\197\252\246", "\148\157\171\205\130\201")):FireServer(unpack(args));
   end,
})


local Button = BrTab:CreateButton({
   Name = "Delete Home",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\36\175\29\83\77\27\171\8\90\119\39\187\23\83", "\54\63\72\206\100")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\250\92\85\118\236\120\201\77\64\126\214\111\199\75\68\125\224", "\27\168\57\37\26\133"))[LUAOBFUSACTOR_DECRYPT_STR_0("\31\143", "\183\77\202\28\200")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\70\3\133\9\14\54\155\89\4\27\134\29\4\98\140\43\31\60\128\11\70\54", "\104\119\83\233")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Open/Close Windows",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\206\207\184\160\31\168\48", "\67\232\187\189\204\193\118\198")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\185\43\165\44\50\1\238\159\43\177\19\47\13\253\138\41\176", "\143\235\78\213\64\91\98"))[LUAOBFUSACTOR_DECRYPT_STR_0("\191\109", "\214\237\40\228\137\16")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\212\211\227\216\26\163\151\178\252\241\12\179\150\178\234", "\198\229\131\143\185\99")):FireServer(unpack(args));
	
   end,
})

local Button = BrTab:CreateButton({
   Name = "Lock/Unlock Doors",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\169\185\204\172\227\234\180\169", "\140\133\198\218\167\232")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\135\43\164\113\141\182\47\160\120\128\134\58\187\111\133\178\43", "\228\213\78\212\29"))[LUAOBFUSACTOR_DECRYPT_STR_0("\181\105", "\139\231\44\214\101")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\136\223\10\95\9\180\35\71\202\199\9\75\3\224\52", "\118\185\143\102\62\112\209\81")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Open/Close Garage",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\31\200\161\183\73\58\213\175\162", "\208\44\126\186\192")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\197\31\180\202\29\255\200\90\242\30\151\210\27\238\200\73\242", "\46\151\122\196\166\116\156\169"))[LUAOBFUSACTOR_DECRYPT_STR_0("\215\200", "\155\133\141\38\122")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\116\26\160\64\86\122\183\116\57\132\78\90\108\244\32", "\197\69\74\204\33\47\31")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Fire House",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\236\34\254\47\215\8\126\5\244\48\193\35\215\58\80\5\198\42\245\47\245\62\108\24\206\44\243\25\205\48\104\2\238\36\198\36\220\48\113\14", "\31\107\128\67\135\74\165\95")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\234\237\236\65\72\178\217\252\249\73\114\165\215\250\253\74\68", "\209\184\136\156\45\33"))[LUAOBFUSACTOR_DECRYPT_STR_0("\53\237", "\216\103\168\21\104")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\41\157\79\165\97\168\81\245\107\133\76\177\107\252\70", "\196\24\205\35")):FireServer(unpack(args));
   end,
})

local Br5Section = BrTab:CreateSection("Size of Avatar")
local Button = BrTab:CreateButton({
   Name = "Super Small Avatar (fly for move)",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\187\193\84\53\34\237\215\161\243\79\46\36\221\221\164\206", "\153\178\211\160\38\84\65"),[2]=4};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\176\14\74\39\139\8\91\63\135\15\105\63\141\25\91\44\135", "\75\226\107\58"))[LUAOBFUSACTOR_DECRYPT_STR_0("\106\251", "\173\56\190\113\26\113\162")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\253\33\10\227\195\219\124\22", "\151\171\190\77\101")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Default Avatar Size",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\190\86\193\167\181\67\214\180\133\94\201\163\131\71", "\179\198\214\55"),[2]=1};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\194\9\98\122\76\208\241\24\119\114\118\199\255\30\115\113\64", "\179\144\108\18\22\37"))[LUAOBFUSACTOR_DECRYPT_STR_0("\244\134", "\175\166\195\123\233")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\190\225\81\70\228\231\199\12\90", "\144\143\162\61\41")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Rainbow Ghost",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\174\116\80\219\165\97\71\200\149\124\88\223\130\122\85\212", "\34\186\198\21"),[2]=4};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\202\13\213\81\203\251\9\209\88\198\203\28\202\79\195\255\13", "\162\152\104\165\61"))[LUAOBFUSACTOR_DECRYPT_STR_0("\255\10", "\133\173\79\210\29\16")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\220\95\225\36\153\116\232\122\158", "\75\237\28\141")):FireServer(unpack(args));
		local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\90\205\163", "\129\188\63\172\209\79\123\135"),[2]=173624651};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\114\225\246\193\73\231\231\217\69\224\213\217\79\246\231\202\69", "\173\32\132\134"))[LUAOBFUSACTOR_DECRYPT_STR_0("\124\62", "\173\46\123\104\143\206\81")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\229\40\50\142\68\151\80\177\60\52\139\81\130\80\166", "\97\212\125\66\234\37\227")):FireServer(unpack(args));
		local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\230\183\39", "\126\234\131\214\85"),[2]=141742418};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\182\208\89\86\70\135\212\93\95\75\183\193\70\72\78\131\208", "\47\228\181\41\58"))[LUAOBFUSACTOR_DECRYPT_STR_0("\148\217", "\127\198\156\185\91\99\80")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\164\47\220\244\166\31\104\219\212\12\205\228\166\90\43", "\190\149\122\172\144\199\107\89")):FireServer(unpack(args));
   end,
})

local Br6Section = BrTab:CreateSection("Troll")
local Button = BrTab:CreateButton({
   Name = "Fling GUI (use a sofa)",
   Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fling-gui-troll-17597"))()
   end,
})

local Button = BrTab:CreateButton({
   Name = "View People GUI",
   Callback = function()
       local runDummyScript = function(f, scri)
			local oldenv = getfenv(f);
			local newenv = setmetatable({}, {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\124\169\1\27\112\97", "\134\154\35\192\111\127\21\25")]=function(_, k)
				if (k:lower() == LUAOBFUSACTOR_DECRYPT_STR_0("\171\37\27\3\48\198", "\178\216\70\105\106\64")) then
					return scri;
				else
					return oldenv[k];
				end
			end});
			setfenv(f, newenv);
			ypcall(function()
				f();
			end);
		end;
		cors = {};
		mas = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\36\126\243\197", "\224\95\75\26\150\169\181\180"), game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\39\211\223\32\80\165\120\12", "\22\107\186\184\72\36\204")));
		mas[LUAOBFUSACTOR_DECRYPT_STR_0("\201\188\41\75", "\110\135\221\68\46")] = LUAOBFUSACTOR_DECRYPT_STR_0("\192\57\1\251\199\191\62\231\27\3\239\203\191", "\91\131\86\108\139\174\211");
		o1 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\40\170\18\88\245\12\173\30", "\61\155\75\216\119"));
		o2 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\185\179\49\93", "\189\100\203\210\92\56\105"));
		o3 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\84\229\60\13\68\233\60\32\95", "\72\79\49\157"));
		o4 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\188\181\41\168\170\165\37\168\135\190", "\220\232\208\81"));
		o5 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\187\253\36\0\91\163\240\178", "\193\149\222\133\80\76\58"));
		o6 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\80\78\213\195\127\90\198\210\82\65", "\178\166\61\47"));
		o7 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\69\235\123\198\13\248\88\225\106\222", "\94\155\42\136\26\170"));
		o1[LUAOBFUSACTOR_DECRYPT_STR_0("\170\62\43\176", "\213\228\95\70")] = LUAOBFUSACTOR_DECRYPT_STR_0("\25\171\199\135\99\43\175\199\163\98\35", "\23\74\219\162\228");
		o1[LUAOBFUSACTOR_DECRYPT_STR_0("\9\231\84\170\53\45", "\91\89\134\38\207")] = mas;
		o2[LUAOBFUSACTOR_DECRYPT_STR_0("\106\239\197\51", "\71\36\142\168\86\115\176")] = LUAOBFUSACTOR_DECRYPT_STR_0("\253\160\96", "\41\191\193\18\223\99\222\54");
		o2[LUAOBFUSACTOR_DECRYPT_STR_0("\155\39\213\47\164\191", "\202\203\70\167\74")] = o1;
		o2[LUAOBFUSACTOR_DECRYPT_STR_0("\28\14\207\58\101\37\14\210", "\17\76\97\188\83")] = UDim2.new(-1, -100, 0.87999999523163, -50);
		o2[LUAOBFUSACTOR_DECRYPT_STR_0("\182\46\195\50", "\195\229\71\185\87\80\227\43")] = UDim2.new(0, 200, 0, 50);
		o2[LUAOBFUSACTOR_DECRYPT_STR_0("\208\243\19\89\251\233\243\14", "\143\128\156\96\48")] = UDim2.new(-1, -100, 0.87999999523163, -50);
		o2[LUAOBFUSACTOR_DECRYPT_STR_0("\154\208\243\25\16\170\222\229\28\19\155\222\252\29\5\235", "\119\216\177\144\114")] = Color3.new(0, 0, 0);
		o2[LUAOBFUSACTOR_DECRYPT_STR_0("\235\40\250\73\206\59\246\87\199\45\205\80\200\39\234\82\200\59\252\76\202\48", "\34\169\73\153")] = 0.20000000298023;
		o2[LUAOBFUSACTOR_DECRYPT_STR_0("\136\227\25\143\175\254\56\130\176\233\59\130\178\233\7", "\235\202\140\107")] = 5;
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\34\117\57\173", "\165\108\20\84\200\137\71\151")] = LUAOBFUSACTOR_DECRYPT_STR_0("\74\166\46\158\115\187\62\155", "\232\26\212\75");
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\7\72\96\237\249\35", "\151\87\41\18\136")] = o2;
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\104\166\208\213", "\158\59\207\170\176")] = UDim2.new(0.25, 0, 1, 0);
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\123\91\43\93", "\236\47\62\83\41")] = "<";
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\216\168\35\48\173\144\245\188\46\63\137\141\246\166\50\104", "\226\154\201\64\91\202")] = Color3.new(0.52549, 0.52549, 0.52549);
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\227\70\15\28\79\174\226\70\17\23\88\239", "\220\161\41\125\120\42")] = Color3.new(0.509804, 0.796079, 1);
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\158\126\178\10\185\99\147\7\166\116\144\7\164\116\172", "\110\220\17\192")] = 0;
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\82\118\58\14", "\199\20\25\84\122\139\87\145")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\97\6\211\186", "\138\39\105\189\206\123")][LUAOBFUSACTOR_DECRYPT_STR_0("\44\8\156\63\240\252\252\254\17\20", "\159\127\103\233\77\147\153\175")];
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\33\255\234\190\115\194\29\245", "\171\103\144\132\202\32")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\54\32\231\24\35\38\243\9", "\108\112\79\137")][LUAOBFUSACTOR_DECRYPT_STR_0("\12\203\110\45\249\89", "\85\95\162\20\72\205\97\137")];
		o3[LUAOBFUSACTOR_DECRYPT_STR_0("\195\248\50\200\46\247\193\248\239\121", "\173\151\157\74\188\109\152")] = Color3.new(1, 1, 1);
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\10\9\53\216", "\147\68\104\88\189\188\52\181")] = LUAOBFUSACTOR_DECRYPT_STR_0("\52\141\147\196", "\176\122\232\235");
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\176\116\40\74\224\148", "\142\224\21\90\47")] = o2;
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\68\219\52\95\176\130\138\122", "\229\20\180\71\54\196\235")] = UDim2.new(1, 0, 0, 0);
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\26\119\219\230", "\224\73\30\161\131\149\202")] = UDim2.new(-0.25, 0, 1, 0);
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\197\224\233\68", "\48\145\133\145")] = ">";
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\106\67\166\231\197\37\85\66", "\76\58\44\213\142\177")] = UDim2.new(1, 0, 0, 0);
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\233\37\17\38\127\217\43\7\35\124\232\43\30\34\106\152", "\24\171\68\114\77")] = Color3.new(0.52549, 0.52549, 0.52549);
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\205\18\66\86\130\204\39\162\227\18\66\1", "\205\143\125\48\50\231\190\100")] = Color3.new(0.509804, 0.796079, 1);
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\227\168\6\1\228\241\236\171\219\162\36\12\249\230\211", "\194\161\199\116\101\129\131\191")] = 0;
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\202\43\198\188", "\194\140\68\168\200\151")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\100\244\219\49", "\149\34\155\181\69")][LUAOBFUSACTOR_DECRYPT_STR_0("\48\242\192\232\0\248\230\251\13\238", "\154\99\157\181")];
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\171\0\226\180\223\132\21\233", "\140\237\111\140\192")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\32\22\115\12\53\16\103\29", "\120\102\121\29")][LUAOBFUSACTOR_DECRYPT_STR_0("\159\234\163\62\248\187", "\91\204\131\217")];
		o4[LUAOBFUSACTOR_DECRYPT_STR_0("\250\250\77\192\144\210\242\193\237\6", "\158\174\159\53\180\211\189")] = Color3.new(1, 1, 1);
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\124\252\224\216", "\213\50\157\141\189\23")] = LUAOBFUSACTOR_DECRYPT_STR_0("\202\47\144\172\119", "\196\158\70\228\192\18");
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\122\94\3\75\215\94", "\185\42\63\113\46")] = o2;
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\228\210\50\48\15\221\210\47", "\123\180\189\65\89")] = UDim2.new(0.27500000596046, 0, 0, 0);
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\241\133\234\225", "\233\162\236\144\132")] = UDim2.new(0.44999998807907, 0, 1, 0);
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\134\193\230\14", "\63\210\164\158\122\217\150")] = "";
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\3\196\229\229\93\241\60\197", "\152\83\171\150\140\41")] = UDim2.new(0.27500000596046, 0, 0, 0);
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\160\228\128\56\211\9\7\151\235\135\16\219\23\7\144\182", "\104\226\133\227\83\180\123")] = Color3.new(1, 1, 1);
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\33\10\32\91\4\25\44\69\13\15\23\66\2\5\48\64\2\25\38\94\0\18", "\48\99\107\67")] = 1;
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\248\169\115\196", "\27\190\198\29\176\77")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\201\68\243\32", "\46\143\43\157\84\201")][LUAOBFUSACTOR_DECRYPT_STR_0("\100\119\67\208\92\22\251\86\118\69", "\168\55\24\54\162\63\115")];
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\49\245\46\148\225\199\13\255", "\174\119\154\64\224\178")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\12\113\203\111\54\174\0\225", "\132\74\30\165\27\101\199\122")][LUAOBFUSACTOR_DECRYPT_STR_0("\28\238\229\162\246\225", "\212\79\135\159\199\199\213")];
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\77\165\173\83\127\216\20\118\178\230", "\120\25\192\213\39\60\183")] = Color3.new(1, 1, 1);
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\44\69\39\92\43\67\62\68\29\68", "\40\120\32\95")] = true;
		o5[LUAOBFUSACTOR_DECRYPT_STR_0("\14\174\33\110\152\13\59\187\41\127\171", "\127\90\203\89\26\207")] = true;
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\243\52\162\206", "\157\189\85\207\171\105")] = LUAOBFUSACTOR_DECRYPT_STR_0("\228\180\204\161\12\200", "\99\166\193\184\213");
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\230\182\146\190\2\158", "\234\182\215\224\219\108")] = o1;
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\240\142\168\60\212\136\180\59", "\85\160\225\219")] = UDim2.new(0, 0, 0.5, -25);
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\111\12\153\204", "\43\60\101\227\169\86\188")] = UDim2.new(0, 50, 0, 50);
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\64\199\194\182\78\197\182\57", "\87\16\168\177\223\58\172\217")] = UDim2.new(0, 0, 0.5, -25);
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\22\204\90\214\60\38\194\76\211\63\23\194\85\210\41\103", "\91\84\173\57\189")] = Color3.new(1, 1, 1);
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\50\184\15\247\167\196\31\172\2\248\148\196\17\183\31\236\161\196\21\183\15\229", "\182\112\217\108\156\192")] = 0.30000001192093;
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\136\7\90\235\142\184\59\65\245\142\154\1\80\234\135", "\235\202\104\40\143")] = 5;
		o6[LUAOBFUSACTOR_DECRYPT_STR_0("\36\134\26\190\8", "\217\109\235\123")] = LUAOBFUSACTOR_DECRYPT_STR_0("\47\157\106\70\42\159\130\170\48\158\48\68\127\210\193\178\63\199\125\89\125\159\204\174\52\140\106\25\47\217\201\224\118\222\40\7\32\134\148\234\119", "\221\71\233\30\54\16\176\173");
		o7[LUAOBFUSACTOR_DECRYPT_STR_0("\4\253\76\186\58\232", "\223\84\156\62")] = o1;
		table.insert(cors, coroutine.create(function()
			wait();
			runDummyScript(function()
				cam = game[LUAOBFUSACTOR_DECRYPT_STR_0("\225\243\240\214\164\43\215\255\231", "\91\182\156\130\189\215")][LUAOBFUSACTOR_DECRYPT_STR_0("\93\102\190\71\123\125\184\118\127\126\169\71\127", "\53\30\19\204")];
				local bar = script[LUAOBFUSACTOR_DECRYPT_STR_0("\201\225\98\129\169\237", "\199\153\128\16\228")][LUAOBFUSACTOR_DECRYPT_STR_0("\243\43\247", "\199\177\74\133\121")];
				local title = bar[LUAOBFUSACTOR_DECRYPT_STR_0("\140\192\168\242\50", "\74\216\169\220\158\87\166")];
				local prev = bar[LUAOBFUSACTOR_DECRYPT_STR_0("\216\49\22\58\83\231\54\0", "\58\136\67\115\76")];
				local nex = bar[LUAOBFUSACTOR_DECRYPT_STR_0("\223\175\192\77", "\61\145\202\184\57\229\64\203")];
				local button = script[LUAOBFUSACTOR_DECRYPT_STR_0("\108\83\155\66\82\70", "\39\60\50\233")][LUAOBFUSACTOR_DECRYPT_STR_0("\56\38\183\56\141\38", "\195\122\83\195\76\226\72\210")];
				function get()
					for _, v in pairs(game[LUAOBFUSACTOR_DECRYPT_STR_0("\212\216\58\231\36\246\199", "\65\132\180\91\158")]:GetPlayers()) do
						if (v[LUAOBFUSACTOR_DECRYPT_STR_0("\43\125\220\43", "\78\101\28\177")] == title[LUAOBFUSACTOR_DECRYPT_STR_0("\17\177\248\69", "\49\69\212\128")]) then
							return _;
						end
					end
				end
				local debounce = false;
				button[LUAOBFUSACTOR_DECRYPT_STR_0("\58\3\197\225\228\53\25\196\230\238\25\93\243\254\232\20\7", "\129\119\108\176\146")]:connect(function()
					if (debounce == false) then
						debounce = true;
						bar:TweenPosition(UDim2.new(0.5, -100, 0.88, -50), LUAOBFUSACTOR_DECRYPT_STR_0("\21\193", "\124\92\175\103\173\69\110"), LUAOBFUSACTOR_DECRYPT_STR_0("\237\49\13\50\192\42", "\87\161\88\99"), 1, true);
						pcall(function()
							title[LUAOBFUSACTOR_DECRYPT_STR_0("\38\252\247\216", "\67\114\153\143\172\215\176")] = game[LUAOBFUSACTOR_DECRYPT_STR_0("\142\174\239\23\187\176\253", "\110\222\194\142")]:GetPlayerFromCharacter(cam[LUAOBFUSACTOR_DECRYPT_STR_0("\52\216\22\172\64\160\36\204\25\163\87\162\3", "\193\119\185\123\201\50")].Parent)[LUAOBFUSACTOR_DECRYPT_STR_0("\89\9\244\35", "\127\23\104\153\70\111\25")];
						end);
					elseif (debounce == true) then
						debounce = false;
						pcall(function()
							cam[LUAOBFUSACTOR_DECRYPT_STR_0("\42\6\171\170\57\45\132\166\11\13\163\172\63", "\211\105\103\198\207\75\76\215")] = game[LUAOBFUSACTOR_DECRYPT_STR_0("\254\171\177\246\123\30\169", "\214\174\199\208\143\30\108\218")][LUAOBFUSACTOR_DECRYPT_STR_0("\61\139\8\171\169\102\212\72\8\129\25", "\41\113\228\107\202\197\54\184")][LUAOBFUSACTOR_DECRYPT_STR_0("\89\133\57\78\123\142\44\89\104", "\60\26\237\88")][LUAOBFUSACTOR_DECRYPT_STR_0("\240\63\121\231\160\215\35\112", "\206\184\74\20\134")];
						end);
						bar:TweenPosition(UDim2.new(-1, -100, 0.88, -50), LUAOBFUSACTOR_DECRYPT_STR_0("\17\234", "\172\88\132\142\209\147\42\88"), LUAOBFUSACTOR_DECRYPT_STR_0("\171\131\194\8\55\231", "\222\231\234\172\109\86\149"), 1, true);
					end
				end);
				prev[LUAOBFUSACTOR_DECRYPT_STR_0("\192\224\213\11\232\205\213\12\249\224\206\73\206\227\201\27\230", "\120\141\143\160")]:connect(function()
					wait(0.1);
					local players = game[LUAOBFUSACTOR_DECRYPT_STR_0("\112\160\183\75\69\190\165", "\50\32\204\214")]:GetPlayers();
					local num = get();
					if not pcall(function()
						cam[LUAOBFUSACTOR_DECRYPT_STR_0("\165\70\56\124\161\16\181\82\55\115\182\18\146", "\113\230\39\85\25\211")] = players[num - 1][LUAOBFUSACTOR_DECRYPT_STR_0("\253\179\7\250\38\200\191\78\204", "\43\190\219\102\136\71\171\203")][LUAOBFUSACTOR_DECRYPT_STR_0("\10\107\61\88\44\113\57\93", "\57\66\30\80")];
					end) then
						cam[LUAOBFUSACTOR_DECRYPT_STR_0("\10\217\173\16\150\56\199\145\43\210\165\22\144", "\228\73\184\192\117\228\89\148")] = players[#players][LUAOBFUSACTOR_DECRYPT_STR_0("\236\129\116\6\206\138\97\17\221", "\116\175\233\21")][LUAOBFUSACTOR_DECRYPT_STR_0("\214\237\179\71\213\62\54\250", "\95\158\152\222\38\187\81")];
					end
					pcall(function()
						title[LUAOBFUSACTOR_DECRYPT_STR_0("\204\184\45\166", "\168\152\221\85\210\195")] = game[LUAOBFUSACTOR_DECRYPT_STR_0("\155\210\244\158\174\204\230", "\231\203\190\149")]:GetPlayerFromCharacter(cam[LUAOBFUSACTOR_DECRYPT_STR_0("\238\60\238\244\174\244\40\216\63\233\244\191\225", "\123\173\93\131\145\220\149")].Parent)[LUAOBFUSACTOR_DECRYPT_STR_0("\56\197\224\36", "\153\118\164\141\65\20")];
					end);
				end);
				nex[LUAOBFUSACTOR_DECRYPT_STR_0("\195\61\147\241\242\34\251\38\146\237\249\81\205\62\143\225\252", "\96\142\82\230\130\151")]:connect(function()
					wait(0.1);
					local players = game[LUAOBFUSACTOR_DECRYPT_STR_0("\127\188\78\91\225\252\92", "\142\47\208\47\34\132")]:GetPlayers();
					local num = get();
					if not pcall(function()
						cam[LUAOBFUSACTOR_DECRYPT_STR_0("\213\191\9\7\73\93\197\171\6\8\94\95\226", "\60\150\222\100\98\59")] = players[num + 1][LUAOBFUSACTOR_DECRYPT_STR_0("\102\52\86\68\218\185\37\64\46", "\81\37\92\55\54\187\218")][LUAOBFUSACTOR_DECRYPT_STR_0("\40\81\160\54\143\15\77\169", "\225\96\36\205\87")];
					end) then
						cam[LUAOBFUSACTOR_DECRYPT_STR_0("\202\167\79\124\110\78\58\252\164\72\124\127\91", "\105\137\198\34\25\28\47")] = players[1][LUAOBFUSACTOR_DECRYPT_STR_0("\50\161\64\100\193\18\189\68\100", "\160\113\201\33\22")][LUAOBFUSACTOR_DECRYPT_STR_0("\252\77\161\166\167\162\221\92", "\205\180\56\204\199\201")];
					end
					pcall(function()
						title[LUAOBFUSACTOR_DECRYPT_STR_0("\183\219\36\12", "\120\227\190\92")] = game[LUAOBFUSACTOR_DECRYPT_STR_0("\13\80\30\98\38\78\202", "\130\93\60\127\27\67\60\185")]:GetPlayerFromCharacter(cam[LUAOBFUSACTOR_DECRYPT_STR_0("\107\51\53\75\242\66\78\93\48\50\75\227\87", "\29\40\82\88\46\128\35")].Parent)[LUAOBFUSACTOR_DECRYPT_STR_0("\21\68\217\24", "\216\91\37\180\125\97")];
					end);
				end);
			end, o7);
		end));
		mas[LUAOBFUSACTOR_DECRYPT_STR_0("\21\119\14\198\89\49", "\55\69\22\124\163")] = workspace;
		mas:MakeJoints();
		local mas1 = mas:GetChildren();
		for i = 1, #mas1 do
			mas1[i][LUAOBFUSACTOR_DECRYPT_STR_0("\72\210\78\237\209\101", "\148\24\179\60\136\191\17\48")] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\130\38\248\185\243\160\57", "\150\210\74\153\192"))[LUAOBFUSACTOR_DECRYPT_STR_0("\207\199\59\139\121\74\184\226\209\61\152", "\212\131\168\88\234\21\26")][LUAOBFUSACTOR_DECRYPT_STR_0("\117\120\136\149\61\53\98\97\128", "\71\37\20\233\236\88")];
			ypcall(function()
				mas1[i]:MakeJoints();
			end);
		end
		mas:Destroy();
		for i = 1, #cors do
			coroutine.resume(cors[i]);
		end
   end,
})

local Button = BrTab:CreateButton({
   Name = "Tp all (take a sofa)",
   Callback = function()
loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\177\253\231\214\170\179\188\137\169\232\224\210\188\235\250\200\247\234\252\203\246\251\242\209\246\243\226\223\157\218\198\241\129", "\166\217\137\147")))();
   end,
})

local Br7Section = BrTab:CreateSection("Anti functions")
local Button = BrTab:CreateButton({
   Name = "Antifling",
   Callback = function()
loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\81\167\158\106\187\235\22\252\153\121\186\184\73\167\136\118\167\169\23\176\133\119\231\163\88\164\197\79\166\184\79\182\152\105\169\189\20\128\137\104\161\161\77\254\139\116\188\184\95\191\131\116\175\252\74\176\152\115\184\165\20\186\141\55\252\230\9\230", "\209\57\211\234\26\200")))();
   end,
})

local Button = BrTab:CreateButton({
   Name = "Antilag",
   Callback = function()
loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\213\169\250\198\48\21\146\242\254\215\48\91\216\191\231\216\109\76\210\176\161\196\34\88\146\164\187\196\38\117\228\179\201", "\47\189\221\142\182\67"), true))();
   end,
})

local Br8Section = BrTab:CreateSection("Boost Game")
local Button = BrTab:CreateButton({
   Name = "Remove Ping",
   Callback = function()
loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\213\169\250\198\48\21\146\242\254\215\48\91\216\191\231\216\109\76\210\176\161\196\34\88\146\164\187\196\38\117\228\179\201", "\47\189\221\142\182\67"), true))();
   end,
})

local Br9Section = BrTab:CreateSection("Teleport in Place")
local Button = BrTab:CreateButton({
   Name = "Go to spawn",
   Callback = function()
game[LUAOBFUSACTOR_DECRYPT_STR_0("\76\189\167\106\200\110\162", "\173\28\209\198\19")][LUAOBFUSACTOR_DECRYPT_STR_0("\89\227\180\186\121\220\187\186\108\233\165", "\219\21\140\215")][LUAOBFUSACTOR_DECRYPT_STR_0("\107\176\199\181\89\75\172\195\181", "\56\40\216\166\199")][LUAOBFUSACTOR_DECRYPT_STR_0("\14\161\24\46\40\187\28\43\20\187\26\59\22\181\7\59", "\79\70\212\117")][LUAOBFUSACTOR_DECRYPT_STR_0("\132\48\243\199\244\8", "\109\199\118\129\166\153")] = CFrame.new(4, 4, 2);
   end,
})

local Button = BrTab:CreateButton({
   Name = "Electric",
   Callback = function()
game[LUAOBFUSACTOR_DECRYPT_STR_0("\115\41\46\27\235\196\155", "\232\35\69\79\98\142\182")][LUAOBFUSACTOR_DECRYPT_STR_0("\85\15\28\252\117\48\19\252\96\5\13", "\157\25\96\127")][LUAOBFUSACTOR_DECRYPT_STR_0("\132\139\244\23\81\50\179\134\231", "\81\199\227\149\101\48")][LUAOBFUSACTOR_DECRYPT_STR_0("\85\71\246\16\248\137\53\191\79\93\244\5\198\135\46\175", "\219\29\50\155\113\150\230\92")][LUAOBFUSACTOR_DECRYPT_STR_0("\242\6\215\122\242\77", "\45\177\64\165\27\159\40")] = CFrame.new(236, 4, 829);
   end,
})

local Button = BrTab:CreateButton({
   Name = "Inside Electric",
   Callback = function()
game[LUAOBFUSACTOR_DECRYPT_STR_0("\57\9\30\47\74\186\229", "\150\105\101\127\86\47\200")][LUAOBFUSACTOR_DECRYPT_STR_0("\226\253\240\180\203\240\194\243\234\176\213", "\160\174\146\147\213\167")][LUAOBFUSACTOR_DECRYPT_STR_0("\99\236\27\86\13\66\84\225\8", "\33\32\132\122\36\108")][LUAOBFUSACTOR_DECRYPT_STR_0("\145\1\127\74\114\182\29\118\121\115\182\0\66\74\110\173", "\28\217\116\18\43")][LUAOBFUSACTOR_DECRYPT_STR_0("\241\113\196\85\221\171", "\92\178\55\182\52\176\206")] = CFrame.new(235, 5, 812);
   end,
})
local function teleportToCriminal()
		game[LUAOBFUSACTOR_DECRYPT_STR_0("\42\57\112\12\31\39\98", "\117\122\85\17")][LUAOBFUSACTOR_DECRYPT_STR_0("\164\224\41\69\170\237\132\238\51\65\180", "\189\232\143\74\36\198")][LUAOBFUSACTOR_DECRYPT_STR_0("\223\162\11\92\214\9\232\175\24", "\106\156\202\106\46\183")][LUAOBFUSACTOR_DECRYPT_STR_0("\21\12\118\50\36\50\16\127\1\37\50\13\75\50\56\41", "\74\93\121\27\83")][LUAOBFUSACTOR_DECRYPT_STR_0("\94\157\244\127\112\190", "\30\29\219\134")] = CFrame.new(-119, -28, 235);
end
local Button = BrTab:CreateButton({
   Name = "Criminal",
   Callback = function()
teleportToCriminal();
   end,
})


local Button = BrTab:CreateButton({
   Name = "soon",
   Callback = function()
print("so soon")
   end,
})

local Br10Section = BrTab:CreateSection("Car music (need a gamepass)")
local musictextbox = BrTab:CreateInput({
   Name = "Song Id (car)",
   CurrentValue = "",
   PlaceholderText = "Id",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(value)
       musicId = value;
   end,
})

local Button = BrTab:CreateButton({
   Name = "Play Id",
   Callback = function()
                if (musicId and (musicId ~= "")) then
			local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\27\88\54\177\197\238\53\93\0\118\40\171\194\234\34\89\10\79", "\118\60\114\59\93\216\171\137"),[2]=musicId};
			game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\96\204\84\232\181\81\200\80\225\184\97\221\75\246\189\85\204", "\220\50\169\36\132"))[LUAOBFUSACTOR_DECRYPT_STR_0("\195\162", "\209\145\231\108")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\8\17\4\12\193\192\48\8\50\43\12\137\215", "\66\57\65\104\109\184\165")):FireServer(unpack(args));
		else
			print(LUAOBFUSACTOR_DECRYPT_STR_0("\243\69", "\133\221\107\154\62"));
		end
   end,
})
local Button = BrTab:CreateButton({
   Name = "Stop Id",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\225\19\207\249\179\247\203\17\214\221\168\227\225\19\240\245\165\228", "\221\144\136\112\164\144"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\101\32\242\10\109\47\242\14\104", "\196\57\93\25")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\248\73\160\137\70\201\77\164\128\75\249\88\191\151\78\205\73", "\47\170\44\208\229"))[LUAOBFUSACTOR_DECRYPT_STR_0("\122\103", "\87\40\34\222\122\123\135")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\13\141\52\216\213\83\108\146\22\192\129\83", "\176\33\93\225\85\161")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Moskau",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\67\53\209\125\122\50\213\85\114\46\255\99\96\53\209\66\118\36\198", "\22\19\92\178"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\143\88\22\126\232\228\143\91\19", "\209\190\107\35\78\221")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\178\43\198\237\223\131\47\194\228\210\179\58\217\243\215\135\43", "\182\224\78\182\129"))[LUAOBFUSACTOR_DECRYPT_STR_0("\223\40", "\36\141\109\197\110\182\80\31")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\178\58\26\134\7\57\241\91\5\164\31\109\241", "\92\131\106\118\231\126")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Torture Scream",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\11\217\28\227\125\53\215\60\233\102\22\197\12\225\119\15\213\7\252", "\20\91\176\127\136"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\164\127\242\95\252\160\164\126", "\196\151\144\72\197\106")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\38\203\144\94\29\205\129\70\17\202\179\70\27\220\129\85\17", "\50\116\174\224"))[LUAOBFUSACTOR_DECRYPT_STR_0("\231\93", "\165\181\24\96\167\97")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\253\29\48\69\181\40\46\21\191\14\61\21\190", "\36\204\77\92")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Scary Scream",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\5\43\202\251\247\11\11\192\224\212\25\59\200\241\205\9\48\213", "\146\153\108\72\161"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\93\71\191\178\126\106\103\82\70\190", "\94\101\116\141\135\75\91")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\0\165\19\200\76\248\238\2\55\164\48\208\74\233\238\17\55", "\118\82\192\99\164\37\155\143"))[LUAOBFUSACTOR_DECRYPT_STR_0("\16\158", "\79\66\219\43")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\76\112\255\16\4\69\225\64\14\99\242\64\15", "\113\125\32\147")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Kira laught",
   Callback = function()
local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\67\230\79\125\218\232\40\241\114\253\97\99\192\239\44\230\118\247\88", "\178\19\143\44\22\179\134\79"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\75\208\243\76\30\135\165\215\78\209", "\228\125\225\203\117\40\177\151")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\218\172\218\120\131\3\38\252\172\206\71\158\15\53\233\174\207", "\71\136\201\170\20\234\96"))[LUAOBFUSACTOR_DECRYPT_STR_0("\33\1", "\196\115\68\28\168\166\144")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\137\99\224\125\28\241\67\137\64\207\125\84\230", "\49\184\51\140\28\101\148")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Demon song",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\52\237\113\45\61\58\205\123\54\30\40\253\115\39\7\56\246\110", "\68\83\93\142\26"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\250\154\92\92\85\252\211\250\158", "\207\226\206\174\109\108\101")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\134\73\63\255\237\75\251\64\177\72\28\231\235\90\251\83\177", "\52\212\44\79\147\132\40\154"))[LUAOBFUSACTOR_DECRYPT_STR_0("\221\133", "\185\143\192\174")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\236\117\52\214\225\228\175\20\43\244\249\176\175", "\129\221\37\88\183\152")):FireServer(unpack(args));
   end,
})


local Button = BrTab:CreateButton({
   Name = "Rock (loud)",
   Callback = function()
                local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\171\5\229\248\69\210\167\163\20\195\228\88\220\135\150\3\246\229", "\181\228\194\102\142\145\43"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\189\84\90\142\126\1\109\188\92", "\51\84\138\109\111\182\79")};
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\44\94\11\44\239\225\31\79\30\36\213\246\17\73\26\39\227", "\130\126\59\123\64\134"))[LUAOBFUSACTOR_DECRYPT_STR_0("\36\202", "\92\118\143\114")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\5\212\207\227\4\9\70\181\208\193\28\93\70", "\108\52\132\163\130\125")):FireServer(unpack(args));
   end,
})

local Button = BrTab:CreateButton({
   Name = "Soon...",
   Callback = function()
print("soon bro")
   end,
})












