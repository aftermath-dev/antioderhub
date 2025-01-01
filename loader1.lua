local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "AntiOder Hub";
    Text = "Starting... its take 5 sec";
    Duration = 5;  -- Durée de la notification en secondes
    Button1 = "OK"; -- Bouton optionnel
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/aftermath-dev/antioderhub/refs/heads/main/main.lua"))()
