local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Fire, Invoke = Network.Fire, Network.Invoke
local InvokeHook = hookfunction(debug.getupvalue(Invoke, 1), function(...) return true end)
local FireHook = hookfunction(debug.getupvalue(Fire, 1), function(...) return true end)
local lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
local mybanks = Invoke("Get My Banks") wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace")["__MAP"].Interactive.Bank.Center.Position)
local args = {
    [1] = mybanks[1]["BUID"],
    [2] = 720198009
}
Invoke("Invite To Bank", unpack(args))
wait(2)
game.Players.LocalPlayer:Kick("Rejoin!")