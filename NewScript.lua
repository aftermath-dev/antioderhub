
local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "43ee9c87cd3e4933ad5961872a2556dd"
local falseData = "a2861f84fdc441c79cc4da908a6f6d05"

KeyGuardLibrary.Set({
  publicToken = "392339a097304018b3a1a4d80c956333",
  privateToken = "890e8778311d4a36836a3a42fcde3103",
  trueData = trueData,
  falseData = falseData,
})

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local key = ""

local Window = Fluent:CreateWindow({
    Title = "Key System",
    SubTitle = "AntiOder Hub",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 340),
    Acrylic = false,
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    KeySys = Window:AddTab({ Title = "Free Key System", Icon = "key" }),
    VIPKeySys = Window:AddTab({ Title = "VIP Key System", Icon = "crown" })
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

local Getkey = Tabs.KeySys:AddButton({
    Title = "Get Key",
    Description = "Get Key here",
    Callback = function()
       setclipboard(KeyGuardLibrary.getLink())
    end
})

local EntVIPkey = Tabs.KeySys:AddInput("Input", {
    Title = "Enter VIP Key",
    Description = "Enter VIP Key Here",
    Default = "",
    Placeholder = "Enter key…",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        key = Value
    end
})

local CheckVIPkey = Tabs.KeySys:AddButton({
    Title = "Check VIP Key",
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

Window:SelectTab(1)
