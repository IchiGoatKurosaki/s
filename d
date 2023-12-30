local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(3)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("sukuna private", "DarkTheme")
local Tab = Window:NewTab("1shot")
local Section = Tab:NewSection("trash game af lmao")



Section:NewToggle("freeze ", "ToggleInfo", function(state)
     if state then 
 game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
     else 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
     end
end)

Section:NewKeybind("Hide UI", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
