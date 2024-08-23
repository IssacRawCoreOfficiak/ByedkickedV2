local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local kickButton = Instance.new("TextButton")
local banButton = Instance.new("TextButton")
local kickPermButton = Instance.new("TextButton")
local banPermButton = Instance.new("TextButton")

frame.Parent = gui
gui.Parent = game.Players.LocalPlayer.PlayerGui

frame.BackgroundColor3 = Color3.new(1, 0, 0) -- turned red!
frame.BorderColor3 = Color3.new(1, 1, 1)
frame.Position = UDim2.new(0.5, 0, 0.5, 0) -- centered on screen
frame.Size = UDim2.new(0, 200, 0, 200)

kickButton.Parent = frame
kickButton.BackgroundColor3 = Color3.new(1, 0, 0) -- turned red!
kickButton.BorderColor3 = Color3.new(1, 1, 1)
kickButton.Position = UDim2.new(0, 10, 0, 10)
kickButton.Size = UDim2.new(0, 180, 0, 30)
kickButton.Font = Enum.Font.SourceSans
kickButton.FontSize = Enum.FontSize.size24
kickButton.TextColor3 = Color3.new(1, 1, 1)
kickButton.Text = "Kick"
kickButton.MouseButton1Click:Connect(function()
local playerName = game.Players.LocalPlayer.Name
local playerToKick = nil
for _, player in pairs(game.Players:GetPlayers()) do
if player.Name ~= playerName then
playerToKick = player
break
end
end
playerToKick:Kick("Kicked by admin!")
end)

banButton.Parent = frame
banButton.BackgroundColor3 = Color3.new(1, 0, 0) -- turned red!
banButton.BorderColor3 = Color3.new(1, 1, 1)
banButton.Position = UDim2.new(0, 10, 0, 50)
banButton.Size = UDim2.new(0, 180, 0, 30)
banButton.Font = Enum.Font.SourceSans
banButton.FontSize = Enum.FontSize.size24
banButton.TextColor3 = Color3.new(1, 1, 1)
banButton.Text = "Ban"
banButton.MouseButton1Click:Connect(function()
local playerName = game.Players.LocalPlayer.Name
local playerToBan = nil
for _, player in pairs(game.Players:GetPlayers()) do
if player.Name ~= playerName then
playerToBan = player
break
end
end
game.Players:RemovePlayer(playerToBan)
end)

kickPermButton.Parent = frame
kickPermButton.BackgroundColor3 = Color3.new(1, 0, 0) -- turned red!
kickPermButton.BorderColor3 = Color3.new(1, 1, 1)
kickPermButton.Position = UDim2.new(0, 10, 0, 90)
kickPermButton.Size = UDim2.new(0, 180, 0, 30)
kickPermButton.Font = Enum.Font.SourceSans
kickPermButton.FontSize = Enum.FontSize.size24
kickPermButton.TextColor3 = Color3.new(1, 1, 1)
kickPermButton.Text = "Kick Perm"
kickPermButton.MouseButton1Click:Connect(function()
local playerName = game.Players.LocalPlayer.Name
local playerToKick = nil
for _, player in pairs(game.Players:GetPlayers()) do
if player.Name ~= playerName then
playerToKick = player
break
end
end
playerToKick:Kick("Kicked permanently by admin!")
wait(1)
game.Players:RemovePlayer(playerToKick)
end)

banPermButton.Parent = frame
banPermButton.BackgroundColor3 = Color3.new(1, 0, 0) -- turned red!
banPermButton.BorderColor3 = Color3.new(1, 1, 1)
banPermButton.Position = UDim2.new(0, 10, 0, 130)
banPermButton.Size = UDim2.new(0, 180, 0, 30)
banPermButton.Font = Enum.Font.SourceSans
banPermButton.FontSize = Enum.FontSize.size24
banPermButton.TextColor3 = Color3.new(1, 1, 1)
banPermButton.Text = "Ban Perm"
banPermButton.MouseButton1Click:Connect(function()
local playerName = game.Players.LocalPlayer.Name
local playerToBan = nil
for _, player in pairs(game.Players:GetPlayers()) do
if player.Name ~= playerName then
playerToBan = player
break
end
end
game.Players:RemovePlayer(playerToBan)
print("Banned permanently by admin!")
end)
