local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "b826e2e08555441ea0083da3f78bd8a8"
local falseData = "11ead01e0a084068b3d45efd5847f1d5"

KeyGuardLibrary.Set({
  publicToken = "392339a097304018b3a1a4d80c956333",
  privateToken = "890e8778311d4a36836a3a42fcde3103",
  trueData = trueData,
  falseData = falseData,
})

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local key = ""

local Window = Fluent:CreateWindow({
    Title = "Aftr Key System",
    SubTitle = "AntiOder Hub",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 340),
    Acrylic = true,
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.LeftAlt
})

local Tabs = {
    KeySys = Window:AddTab({ Title = "Key System", Icon = "key" }),
}

local Entkey = Tabs.KeySys:AddInput("Input", {
    Title = "Enter Key",
    Description = "Enter Key Here",
    Default = "",
    Placeholder = "Enter key…",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        key = Value
    end
  })

local Checkkey = Tabs.KeySys:AddButton({
    Title = "Check Key",
    Description = "Enter Key before pressing this button",
    Callback = function()
        local response = KeyGuardLibrary.validateDefaultKey(key)
        if response == trueData then
           print("Key is valid")
           loadstring(game:HttpGet("https://raw.githubusercontent.com/aftermath-dev/antioderhub/refs/heads/main/main"))()
        else
           print("Key is invalid")
        end
    end
})

local Checkvipkey = Tabs.KeySys:AddButton({
    Title = "Check Premium Key",
    Description = "Enter Key before pressing this button",
    Callback = function()
        local response = KeyGuardLibrary.validatePremiumKey(key)
        if response == trueData then
           print("Key is valid")
           loadstring(game:HttpGet("https://raw.githubusercontent.com/aftermath-dev/antioderhub/refs/heads/main/main"))()
        else
           print("Key is invalid")
        end
    end
})
    

local Getkey = Tabs.KeySys:AddButton({
    Title = "Get Key",
    Description = "Get Key here",
    Callback = function()
       setclipboard(KeyGuardLibrary.getLink())
    end
})

Window:SelectTab(1)
    
