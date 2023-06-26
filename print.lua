--Key System | New
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "Cat Hub[v2.0]",
   LoadingTitle = "Enabled Script",
   LoadingSubtitle = "by senpaigm#3881",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "CPhRtPPGrC", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Cat Hub[v2.0]",
      Subtitle = "Cat Key System",
      Note = "Key in this discord server (https://discord.gg/CPhRtPPGrC)",
      FileName = "",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "CatV2Key"
   }
})

Rayfield:Destroy()
--Bypass System | New
local Client = require(game.ReplicatedStorage.Library.Client)
local Library = require(game.ReplicatedStorage.Library)
local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Invoke = Network.Invoke
local Fire = Network.Fire
debug.setupvalue(
    Client.Network.Invoke,
    1,
    function()
        return true
    end
)
debug.setupvalue(
    Client.Network.Fire,
    1,
    function()
        return true
    end
)
local lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
--Convert System | New
local Library = require(game:GetService("ReplicatedStorage"):WaitForChild("Framework"):WaitForChild("Library"))
local IDToName = {}
  local NameToID = {}
  for i,v in pairs(Library.Directory.Pets) do
      IDToName[i] = v.name
      NameToID[v.name] = i
  end   
function GetPets()
      local MyPets = {}
      for i,v in pairs(Library.Save.Get().Pets) do
              local ThingyThingyTempTypeThing = (v.g and 'Gold') or (v.r and 'Rainbow') or (v.dm and 'Dark Matter') or 'Normal'
              local TempString = ThingyThingyTempTypeThing .. IDToName[v.id]
              if MyPets[TempString] then
                  table.insert(MyPets[TempString], v.uid)
              else
                  MyPets[TempString] = {}
                  table.insert(MyPets[TempString], v.uid)
              end
          end
      return MyPets
end
--Collect System | New
for i,v in pairs(getconnections(workspace.__THINGS.Orbs.ChildAdded)) do
    v:Disable()
end
--Auto Farm System | Update
local Run_Service = game:GetService("RunService")
  local rs = Run_Service.RenderStepped
  Library = require(game:GetService('ReplicatedStorage').Framework:FindFirstChild('Library'))
  local areas = {
            --Vip
            ['VIP'] = {'VIP'};
            --Spawn World
            ['Town'] = {'Town', 'Town FRONT'}; ['Forest'] = {'Forest', 'Forest FRONT'}; ['Beach'] = {'Beach', 'Beach FRONT'}; ['Mine'] = {'Mine', 'Mine FRONT'}; ['Winter'] = {'Winter', 'Winter FRONT'}; ['Glacier'] = {'Glacier', 'Glacier Lake'}; ['Desert'] = {'Desert', 'Desert FRONT'}; ['Volcano'] = {'Volcano', 'Volcano FRONT'};
            -- Fantasy World
            ['Enchanted Forest'] = {'Enchanted Forest', 'Enchanted Forest FRONT'}; ['Ancient'] = {'Ancient Island'}; ['Samurai'] = {'Samurai Island', 'Samurai Island FRONT'}; ['Candy'] = {'Candy Island'}; ['Haunted'] = {'Haunted Island', 'Haunted Island FRONT'}; ['Hell'] = {'Hell Island'}; ['Heaven'] = {'Heaven Island'};
            -- Tech World
            ['Ice Tech'] = {'Ice Tech'}; ['Tech City'] = {'Tech City'; 'Tech City FRONT'}; ['Dark Tech'] = {'Dark Tech'; 'Dark Tech FRONT'}; ['Steampunk'] = {'Steampunk'; 'Steampunk FRONT'}, ['Alien Forest'] = {"Alien Forest"; "Alien Forest FRONT"}, ['Alien Lab'] = {"Alien Lab"; "Alien Lab FRONT"}, ['Glitch'] = {"Glitch"; "Glitch FRONT"}; ['Hacker Portal'] = {"Hacker Portal", "Hacker Portal FRONT"};
            -- Axolotl World
            ['Axolotl Ocean'] = {'Axolotl Ocean', 'Axolotl Ocean FRONT'}; ['Axolotl Deep Ocean'] = {'Axolotl Deep Ocean', 'Axolotl Deep Ocean FRONT'}; ['Axolotl Cave'] = {'Axolotl Cave', 'Axolotl Cave FRONT'};
            -- Pixel World
            ['Pixel Forest'] = {'Pixel Forest', 'Pixel Forest FRONT'}; ['Pixel Kyoto'] = {'Pixel Kyoto', 'Pixel Kyoto FRONT'}; ['Pixel Alps'] = {'Pixel Alps', 'Pixel Alps FRONT'} ; ['Pixel Vault'] = {'Pixel Vault', 'Pixel Vault FRONT'};
            --Cat World
            ['Cat Paradise'] = {'Cat Paradise', 'Cat Paradise FRONT'}; ['Cat Backyard'] = {'Cat Backyard', 'Cat Backyard FRONT'}; ['Cat Taiga'] = {'Cat Taiga', 'Cat Taiga FRONT'}; ['Cat Kingdom'] = {'Cat Kingdom', 'Cat Kingdom FRONT'};
            --Doodle World
            ['Doodle Shop'] = {'Doodle Shop', 'Doodle Shop FRONT'}; ['Doodle Meadow'] = {'Doodle Meadow', 'Doodle Meadow FRONT'}; ['Doodle Peaks'] = {'Doodle Peaks', 'Doodle Peaks FRONT'}; ['Doodle Farm'] = {'Doodle Farm', 'Doodle Farm FRONT'}; ['Doodle Oasis'] = {'Doodle Oasis', 'Doodle Oasis FRONT'};
            --Kawaii World
            ['Kawaii Tokyo'] = {'Kawaii Tokyo', 'Kawaii Tokyo FRONT'}; ['Kawaii Village'] = {'Kawaii Village', 'Kawaii Village FRONT'}; ['Kawaii Candyland'] = {'Kawaii Candyland', 'Kawaii Candyland FRONT'}; ['Kawaii Temple'] = {'Kawaii Temple', 'Kawaii Temple FRONT'};
            --Mine World
            ['Paradise Cave'] = {'Paradise Cave', 'Paradise Cave FRONT'}, ['Cyber Cavern'] = {'Cyber Cavern'}, ['Mystic Mine'] = {'Mystic Mine', 'Mystic Mine FRONT'};
            --Dog World
            ['Dog Park'] = {'Dog Park', 'Dog Park FRONT'}, ['Dog City'] = {'Dog City', 'Dog City FRONT'}, ['Dog Firehouse'] = {'Dog Firehouse', 'Dog Firehouse FRONT'}, ['Dog Mansion'] = {'Dog Mansion', 'Dog Mansion FRONT'};
            --Summer Event World
            ['Sandy Beach'] = {'Sandy Beach', 'Sandy Beach FRONT'}, ['Tiki Island'] = {'Tiki Island', 'Tiki Island FRONT'}, ['Pirate Cove'] = {'Pirate Cove', 'Pirate Cove FRONT'}, ['Rocky Cove'] = {'Rocky Cove', 'Rocky Cove FRONT'}, ['Paradise Falls'] = {'Paradise Falls', 'Paradise Falls FRONT'}, ['Atlantis Ocean'] = {'Atlantis Ocean', 'Atlantis Ocean FRONT'},

}
        local AreaList = { 
            'VIP';
            'Town'; 'Forest'; 'Beach'; 'Mine'; 'Winter'; 'Glacier'; 'Desert'; 'Volcano';
            'Enchanted Forest'; 'Ancient'; 'Samurai'; 'Candy'; 'Haunted'; 'Hell'; 'Heaven';
            'Ice Tech'; 'Tech City'; 'Dark Tech'; 'Steampunk'; 'Alien Lab'; 'Alien Forest'; 'Glitch'; "Hacker Portal";
            'Axolotl Ocean'; 'Axolotl Deep Ocean'; 'Axolotl Cave';
            'Pixel Forest'; 'Pixel Kyoto'; 'Pixel Alps'; 'Pixel Vault';
            'Doodle Oasis'; 'Doodle Farm'; 'Doodle Peaks'; 'Doodle Meadow'; 'Doodle Shop';
            'Doodle Woodlands'; "Doodle Safari"; 'Doodle Fairyland'; 'Doodle Cave';
            'Kawaii Tokyo'; "Kawaii Village"; 'Kawaii Candyland'; 'Kawaii Temple';
            'Paradise Cave'; "Cyber Cavern"; "Mystic Mine";
            'Dog Park'; "Dog City"; "Dog Firehouse"; "Dog Mansion";
            'Sandy Beach'; "Tiki Island"; "Pirate Cove"; "Rocky Cove"; "Paradise Falls"; "Atlantis Ocean";
        }

        local Chests = {
            --Spawn Chest:
            "Volcano Magma Chest",
            --Fantasy Chets
            "Enchanted Chest", "Hell Chest", "Haunted Chest", "Angel Chest", "Grand Heaven Chest",
            --Tech Cheths
            "Giant Tech Chest"; "Giant Steampunk Chest"; "Giant Alien Chest"; "Giant Hacker Chest";
            --Axolotl Chest
           "Giant Ocean Chest";
           --Pixel Chest
           "Giant Pixel Chest";
           --Cat Chest
           "Giant Cat Chest";
           --Doodle Chests
           "Giant Doodle Oasis Chest";
           "Giant Doodle Barn Chest";
           "Giant Doodle Cave Chest";
           --Kawaii Chests
           "Giant Kawaii Chest";
           "Giant Kawaii Alley Chest";
           "Giant Kawaii Dojo Chest";
           --Mine Chest
           "Giant Diamond Chest";
           --Dog Chests
           "Giant Dog Chest";
           "Giant Disco Chest";
           --Summer Event Chests
           "Summer Volcano Chest";
           "Giant Ocean Chest"
        }
        function FarmCoin(CoinID, PetID)
    Invoke("Join Coin",CoinID, {PetID})
    Fire("Farm Coin",CoinID, PetID)
    end
local Orbs = getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.Game.Orbs)
for i,v in pairs(workspace.__THINGS.Orbs:GetChildren()) do 
    Orbs.Collect(v)
end
workspace.__THINGS.Orbs.ChildAdded:Connect(function(v)
Orbs.Collect(v)
end)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

function FarmCoin(CoinID, PetID)
Invoke("Join Coin",CoinID, {PetID})
    Fire("Farm Coin",CoinID, PetID)
    end
function GetMyPets()
    return Library.PetCmds.GetEquipped() 
end  
function GetMyPets2()
local uhhh = {}
for i,v in pairs(Library.PetCmds.GetEquipped()) do
    table.insert(uhhh, v.uid) end
    return uhhh
end  
function getGemid()
          for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
              if v:IsA"MeshPart" then
                  local hitler = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                  if hitler <= 400 then 
                  if v.MeshId == 'rbxassetid://7041620873' or v.MeshId == 'rbxassetid://7041621431' or v.MeshId == 'rbxassetid://7041621329' or v.MeshId == 'rbxassetid://7041620873' then
                      a = v.Parent.Name
                  end end
              end
          end
          return a
end
  
         local Areas = {'All'}
         for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetDescendants()) do
             if v.ClassName=="Folder" and v.Name ~= "Spawn" and v.Name ~= "Fantasy"and v.Name ~= "Tech"and v.Name ~= "Other"and v.Name ~= "Axolotl"and v.Name ~= "Pixel"then
                 table.insert(Areas, v.Name)
             end
         end
function GetCoinsN(area)
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
       if not string.find(v.n, "Giant") then
        if FarmingArea == 'All' or table.find(areas[FarmingArea], v.a) then
            local shit = v
            shit["index"] = i 
            table.insert(returntable, shit)
         end end
    end
    return returntable
end


function GetCoinsH()
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
       if string.find(v.n, "Easter") then if (v.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
            local shit = v
            shit["index"] = i 
            table.insert(returntable, shit)
         end  end
    end
    return returntable
end


function GetCoinsH1()
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
       if string.find(v.n, "Banana") or string.find(v.n, "Apple") or string.find(v.n, "Pineapple") or string.find(v.n, "Orange") or string.find(v.n, "Pear") or string.find(v.n, "Rainbow Fruit") then if (v.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
            local shit = v
            shit["index"] = i 
            table.insert(returntable, shit)
         end  end
    end
    return returntable
end

function GetCoins2(area)
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
       if not string.find(v.n, "Giant") then
        if FarmingArea == 'All' or table.find(areas[FarmingArea], v.a) then
            local shit = v
            shit["index"] = i 
            table.insert(returntable, shit)
         end end
    end
    return returntable
end

function GetCoins(Area)
    local Coins = {}
    for i,v in next, Invoke('Get Coins') do 
        if v.a == Area then 
            Coins[i] = v
        end 
    end 
    return Coins
end 

function GetCoinTableN(area)
    local CoinTable = GetCoinsN(area)
    function getKeysSortedByValue(tbl, sortFunction)
        local keys = {}
        for key in pairs(tbl) do
            table.insert(keys, key)
        end
        table.sort(
            keys,
            function(a, b)
                return sortFunction(tbl[a].h, tbl[b].h)
            end
        )
        return keys
    end
    local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a > b end)
    local newCoinTable = {}

    for i,v in pairs(sortedKeys) do
        table.insert(newCoinTable, CoinTable[v])
    end
    
    return newCoinTable
end

function GetCoinTable2(area)
    local CoinTable = GetCoins2(area)
    function getKeysSortedByValue(tbl, sortFunction)
        local keys = {}
        for key in pairs(tbl) do
            table.insert(keys, key)
        end
        table.sort(
            keys,
            function(a, b)
                return sortFunction(tbl[a].h, tbl[b].h)
            end
        )
        return keys
    end
    local sortedKeys = getKeysSortedByValue(CoinTable, function(a, b) return a < b end)
    local newCoinTable = {}

    for i,v in pairs(sortedKeys) do
        table.insert(newCoinTable, CoinTable[v])
    end
    
    return newCoinTable
end

local AreaWorldTable = {}
for _, v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
    for _, b in pairs(v:GetChildren()) do
        table.insert(AreaWorldTable, b.Name)
    end
    table.insert(AreaWorldTable, v.Name)
end
function AllChests(chest)
    local returntable = {}
    local ListCoins = Invoke("Get Coins")
    for i,v in pairs(ListCoins) do
        local shit = v
        shit.index = i
        for aa,bb in pairs(AreaWorldTable) do
            if string.find(v.n, chest) or string.find(v.n, bb) or string.find(v.n, "Giant") then
                local thing = string.gsub(v.n, bb.." ", "")
                if table.find(Chests, thing) then
                    shit.n = thing
                    table.insert(returntable, shit)
                end
            end
        end
    end
    return returntable
end
--Loading System | Update
local lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
 
 local l__AdminCommands__4 = lib.GUI.AdminCommands;


    function AddNotification(p6)
        local v47 = game:GetService("Players").LocalPlayer.PlayerGui[string.reverse("sdnammoC nimdA")][string.reverse("tneilC sdmC nimdA")].Notification:Clone();
        getgenv().barhat = setmetatable({hfauwifha = math.random,ahfhwf = function() return string.reverse("") end}, {})
        if barhat[string.reverse("ahfiwuafh")](1,3) == 3 then 
         p6 = barhat.ahfhwf()..p6
            end
        v47.TextLabel.Text = p6;
        v47.Parent = l__AdminCommands__4.Notifications;
        coroutine.wrap(function()
            lib.Functions.Tween(v47, {
                BackgroundColor3 = Color3.new(0, 0, 0)
            }, { 0.25, "Sine", "In" });
            wait(3.5);
            lib.Functions.Tween(v47.TextLabel, {
                TextTransparency = 1
            }, { 1, "Sine", "In" });
            lib.Functions.Tween(v47, {
                BackgroundTransparency = 1
            }, { 1, "Sine", "In" }).Completed:Connect(function()
                v47:Destroy();
            end);
        end)();
    end;

AddNotification("Gui Loading.")
task.wait(1)
AddNotification("Gui Loading..")
task.wait(1)
AddNotification("Gui Loading...")
task.wait(1)
AddNotification("Gui Loaded")
task.wait(1)
AddNotification("Functions Loaded!")
task.wait(1)
AddNotification("Thx For Using Cat Hub V2.0")
wait(3)

local v1 = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))

v1.Signal.Fire("Notification", "Thx For Using Cat Hub v2.0", {
  color = Color3.fromRGB(0, 255, 255)
});
--Main System | Update
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Cat Hub", HidePremium = true, SaveConfig = true, ConfigFolder = "Cat Hub", IntroEnabled = true, IntroText = "Cat Hub|Loader",IntroIcon = "rbxassetid://10472045394", Icon = "rbxassetid://10472045394" })
--Player Info | Update
local InfoTab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://7733978098",
	PremiumOnly = false
})

local Section = InfoTab:AddSection({
	Name = "Player Information"
})

InfoTab:AddLabel("Player Username | "..game.Players.LocalPlayer.name)
InfoTab:AddLabel("Player Id | "..game.Players.LocalPlayer.UserId)
InfoTab:AddLabel("Local Game Name: "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
InfoTab:AddLabel("Join In Discord Server For New Updates")
InfoTab:AddButton({
	Name = "Copy Invite Link",
	Callback = function()
        setclipboard("https://discord.gg/PcupMq4G5q")
        wait(1)
        game.StarterGui:SetCore("SendNotification", {
        Title = "Cat Hub V2.0";
        Text = "You have successfully copied invite link";
        Icon = "rbxassetid://13165941837";
        Duration = 5;
    })	
  	end  
})
--Auto Farm | Beta
local FarmTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://7733960981",
	PremiumOnly = false
})

local Section = FarmTab:AddSection({
	Name = "Auto Farm"
})

FarmTab:AddDropdown({
	Name = "Area",
    Default = "",
	Options = {"All","VIP","Town","Forest","Beach","Mine","Winter","Glacier","Desert","Volcano","Enchanted Forest","Ancient","Samurai","Candy","Haunted","Hell","Heaven","Ice Tech","Tech City","Dark Tech","Steampunk","Alien Lab","Alien Forest","Glitch","Hacker Portal","Axolotl Ocean","Axolotl Deep Ocean","Axolotl Cave","Pixel Forest","Pixel Kyoto","Pixel Alps","Pixel Vault","Cat Paradise","Cat Backyard","Cat Taiga","Cat Kingdom","Doodle Meadow","Doodle Peaks","Doodle Farm","Doodle Oasis","Doodle Woodlands","Doodle Safari","Doodle Fairyland","Doodle Cave","Kawaii Tokyo","Kawaii Village","Kawaii Candyland","Kawaii Temple","Paradise Cave","Cyber Cavern","Mystic Mine", "Dog Park", "Dog City", "Dog Firehouse", "Dog Mansion","Sandy Beach","Tiki Island","Pirate Cove","Rocky Cove","Paradise Falls","Atlantis Ocean"},
	Callback = function(f)
getgenv().FarmingArea = f
end    
})

FarmTab:AddDropdown({
    Name = "Chest",
    Default = "",
    Options = {"Volcano Magma Chest","Enchanted Chest","Hell Chest","Haunted Chest","Angel Chest","Grand Heaven Chest","Giant Tech Chest","Giant Steampunk Chest","Giant Alien Chest","Giant Hacker Chest","Giant Ocean Chest","Giant Pixel Chest","Giant Cat Chest","Giant Doodle Oasis Chest","Giant Doodle Barn Chest","Giant Doodle Cave Chest","Giant Kawaii Chest","Giant Kawaii Alley Chest","Giant Kawaii Dojo Chest","Gaint Diamond Chest","Giant Dog Chest","Giant Disco Chest","Summer Volcano Chest","Giant Ocean Chest"},
    Callback = function(rf)
getgenv().FarmingChest = rf
end
})

FarmTab:AddDropdown({
    Name = "Type",
    Default = "",
    Options = {"Fruits","Normal","Chest","Multi Target","Highest Value","Lowest Value","Nearest","Gems"},
    Callback = function(r)
        getgenv().FarmingType = r
end
})

FarmTab:AddToggle({
    Name = "Auto Farm",
    Default = false,
    Callback = function(yes)
         getgenv().oko = yes
        while oko and wait() do
            if echest == true then
  if FarmingType == "Normal" then 
        local Coins = GetCoinsN(FarmingArea)
        for i,v in next, Coins do
            if workspace.__THINGS.Coins:FindFirstChild(i) then 
                    for _, bb in pairs(pethingy) do
                                task.wait(.01)
                            spawn(function()
                                FarmCoin(i, bb.uid)
                            end)
                        end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(i) if oko ~= true then break end
                end 
        end
elseif FarmingType == "Fruits" then
            local pethingy = GetMyPets()
        local Coins = GetCoinsH1()
        for i,v in next, Coins do 
            if workspace.__THINGS.Coins:FindFirstChild(v.index) then 
                    for _, bb in pairs(pethingy) do
task.wait(.01)
                        spawn(function()
                                FarmCoin(v.index, bb.uid)
                            end)
                        end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) if oko ~= true then break end
                end 
            end
elseif FarmingType == "Chest" then 
         pethingy = GetMyPets()
                       for i,v in pairs(AllChests()) do
                if (v.n == FarmingChest) or (FarmingChest == 'All') then
                    for a, b in pairs(pethingy) do
                        spawn(function() FarmCoin(v.index, b.uid) end) 
                    end repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or oko ~= true 
                    end
                       end 
elseif FarmingType == "Multi Target" then
                  CurrentFarmingPets = {}
         pethingy = GetMyPets2()
             cointhiny = GetCoinsN(FarmingArea)
            for i = 1, #cointhiny do 
                if i%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
if oko == false then break else        
                        spawn(function()
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                        FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                        repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                    end)
                 end end end 
elseif FarmingType == "Highest Value" then
         pethingy = GetMyPets2()
              cointhiny = GetCoinTableN(FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(cointhiny[1].index, b) end)
            end repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or oko ~= true 
elseif FarmingType == "Lowest Value" then
         CurrentFarmingPets = {}
         pethingy = GetMyPets2()
              cointhiny = GetCoinTable2(FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(cointhiny[1].index, b) end) 
            end repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or oko ~= true 
elseif getgenv().FarmingType == "Nearest" then 
         CurrentFarmingPets = {}
         pethingy = GetMyPets2()
             NearestDistance = math.huge
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
                if (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < NearestDistance then
                    NearestOne = v
                    NearestDistance = (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end 
            end
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(NearestOne.Name, b) end)
            end end
elseif FarmingType == "Gems" then
     pethingy = GetMyPets()
                for i,v in pairs(pethingy) do
            pcall(function()
                FarmCoin(getGemid(), v) 
            end) end 
elseif echest == false then
        local pethingy = GetMyPets()
        
        if FarmingType == 'Normal' then
            local Coins = GetCoins(FarmingArea)
        for i,v in next, Coins do
            if workspace.__THINGS.Coins:FindFirstChild(i) then 
                    for _, bb in pairs(pethingy) do
                                task.wait(.01)
                            spawn(function()
                                FarmCoin(i, bb.uid)
                            end)
                        end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(i) if oko ~= true then break end
                end 
            end

elseif FarmingType == "Fruits" then
            local pethingy = GetMyPets()
        local Coins = GetCoinsH1()
        for i,v in next, Coins do 
            if workspace.__THINGS.Coins:FindFirstChild(v.index) then 
                    for _, bb in pairs(pethingy) do
task.wait(.01)
                        spawn(function()
                                FarmCoin(v.index, bb.uid)
                            end)
                        end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) if oko ~= true then break end
                end 
            end

        elseif FarmingType == 'Chest' then
 local pethingy = GetMyPets()
            for i,v in pairs(AllChests(FarmingChest)) do 
                if (v.n == FarmingChest) or (FarmingChest == 'All') then
                if workspace.__THINGS.Coins:FindFirstChild(v.index) then 
                    for _, bb in pairs(pethingy) do
                                task.wait(.01)
                            spawn(function()
                                FarmCoin(v.index, bb.uid) 
                            end)
                    end 
                    repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(v.index) or #game:GetService("Workspace")["__THINGS"].Coins[v.index].Pets:GetChildren() == 0 or oko ~= true
                end end
            end

        elseif FarmingType == 'Multi Target' then
CurrentFarmingPets = {}
pethingy = GetMyPets2()
cointhiny = GetCoins2(FarmingArea)
            for i = 1, #cointhiny do 
                if i%#pethingy == #pethingy-1 then wait() end
                if not CurrentFarmingPets[pethingy[i%#pethingy+1]] or CurrentFarmingPets[pethingy[i%#pethingy+1]] == nil then
 if oko == false then break else           
     spawn(function()
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = 'Farming'
                        FarmCoin(cointhiny[i].index, pethingy[i%#pethingy+1])
                        repeat task.wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index) or #game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[i].index).Pets:GetChildren() == 0
                        CurrentFarmingPets[pethingy[i%#pethingy+1]] = nil
                    end)
                 end end end

        elseif FarmingType == 'Highest Value' then
pethingy = GetMyPets2()
            local cointhiny = GetCoinTableN(FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() wait() FarmCoin(cointhiny[1].index, b) end)
            end
            repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0

        elseif FarmingType == 'Lowest Value' then
pethingy = GetMyPets2()
            local cointhiny = GetCoinTable2(FarmingArea)
            for a,b in pairs(pethingy) do
                spawn(function() wait() FarmCoin(cointhiny[1].index, b) end)
            end
            repeat rs:wait() until not game:GetService("Workspace")["__THINGS"].Coins:FindFirstChild(cointhiny[1].index) or #game:GetService("Workspace")["__THINGS"].Coins[cointhiny[1].index].Pets:GetChildren() == 0

        elseif FarmingType == 'Nearest' then
pethingy = GetMyPets2()
            local NearestOne = nil
            local NearestDistance = math.huge
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Coins:GetChildren()) do
                if (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < NearestDistance then
                    NearestOne = v
                    NearestDistance = (v.POS.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
            for a,b in pairs(pethingy) do
                spawn(function() FarmCoin(NearestOne.Name, b) end)
            end end end end end 
}) 

local Section = FarmTab:AddSection({
	Name = "Settings"
})

FarmTab:AddToggle({
    Name = "Ignore Chest",
    Default = false,
    Callback = function(math)
        getgenv().echest = math end
})

local Library = require(game:GetService("ReplicatedStorage").Library)

local fastPets = false
	local Original_HasPower = Library.Shared.HasPower
	Library.Shared.HasPower = function(pet, powerName) 
		if fastPets and powerName == "Agility" then 
			return true, 3
		end
		return Original_HasPower(pet, powerName)
	end
	
	local Original_GetPowerDir = Library.Shared.GetPowerDir
	Library.Shared.GetPowerDir = function(powerName, tier) 
		if fastPets and powerName == "Agility" then 
			return  {
				title = "Agility III", 
				desc = "Pet moves 50% faster", 
				value = 20
			}
		end
		return Original_GetPowerDir(powerName, tier)
end

FarmTab:AddToggle({
    Name = "Fast Pets",
    Default = false,
    Callback = function(Value)
        fastPets = Value
    end
})

FarmTab:AddToggle({
    Name = "Stats Tracker",
    Default = false,
    Callback = function(sexxx)
        getgenv().see = sexxx
        if getgenv().see == true then 
local gamelibrary = require(game:GetService("ReplicatedStorage").Framework.Library)
local Save = gamelibrary.Save.Get
local Commas = gamelibrary.Functions.Commas
local types = {}
local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
for i, v in pairs(menus:GetChildren()) do
    if v.ClassName == 'Frame' and v.Name ~= 'Rank' and not string.find(v.Name, "2") then
        table.insert(types, v.Name)
    end
end
function get(thistype)
    if game.PlaceId == 10321372166 and string.find(string.lower(thistype), "coins") then
        return Save().HardcoreCurrency[thistype]
    else
        return Save()[thistype]
    end
end
            
local LayoutOrders = {
    ["Diamonds"] = 999910;
    ["Halloween Candy"] = 999920;
    ["Gingerbread"] = 999930;
    ["Rainbow Coins"] = 999940;
    ["Tech Coins"] = 999950;
    ["Fantasy Coins"] = 999960;
    ["Coins"] = 999970;
}
menus.UIListLayout.HorizontalAlignment = 2
_G.MyTypes = {}
for i,v in pairs(types) do
    if menus:FindFirstChild(v.."2") then
        menus:FindFirstChild(v.."2"):Destroy()
    end
end
for i,v in pairs(types) do
    spawn(function()
        if not menus:FindFirstChild(v.."2") then
            menus:WaitForChild(v).LayoutOrder = LayoutOrders[v]
            local tempmaker = menus:WaitForChild(v):Clone()
            tempmaker.Name = tostring(tempmaker.Name .. "2")
            tempmaker.Parent = menus
            tempmaker.Size = UDim2.new(0, 175, 0, 30)
            tempmaker.LayoutOrder = tempmaker.LayoutOrder + 1
            _G.MyTypes[v] = tempmaker
        end
    end)
end
spawn(function() menus:WaitForChild("Diamonds2").Add.Visible = false end)
for i,v in pairs(types) do
    spawn(function()
        repeat task.wait() until _G.MyTypes[v]
        local megatable = {}
        local imaginaryi = 1
        local ptime = 0
        local last = tick()
        local now = last
        local TICK_TIME = 0.5
while see == true do
            if ptime >= TICK_TIME then
                while ptime >= TICK_TIME do ptime = ptime - TICK_TIME end
                local currentbal = get(v)
                megatable[imaginaryi] = currentbal
                local diffy = currentbal - (megatable[imaginaryi-120] or megatable[1])
                imaginaryi = imaginaryi + 1
                _G.MyTypes[v].Amount.Text = tostring(Commas(diffy).." in 60s")
                _G.MyTypes[v].Amount_odometerGUIFX.Text = tostring(Commas(diffy).." in 60s")
            end
            task.wait()
            now = tick()
            ptime = ptime + (now - last)
            last = now
      end
    end)
end
elseif see == false then
    local types = {}
local menus = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right
for i, v in pairs(menus:GetChildren()) do
    if v.ClassName == 'Frame' and v.Name ~= 'Rank' and not string.find(v.Name, "2") then
        table.insert(types, v.Name)
    end
end
    for i,v in pairs(types) do
    if menus:FindFirstChild(v.."2") then
        menus:FindFirstChild(v.."2"):Destroy()
    end
end
            end
    end
})

local Section = FarmTab:AddSection({
	Name = "Collect"
})

FarmTab:AddToggle({
    Name = "Auto Gift",
    Default = false,
    Callback = function(g)
        getgenv().x=g
    while x==true and wait(4) do
        local a = 0
for i=1,12 do
a = a+1 
Invoke("Redeem Free Gift",a) wait(.5) end a = 0 end
    end
})

FarmTab:AddToggle({
    Name = "Auto Orbs",
    Default = false,
    Callback = function(Value)
        getgenv().AutoOrbs = Value
        while wait() and getgenv().AutoOrbs do
        local Orbs = getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.Game.Orbs)
        for i,v in pairs(workspace.__THINGS.Orbs:GetChildren()) do 
            Orbs.Collect(v)
        end
        end
    end
})

FarmTab:AddToggle({
    Name = "Auto Lootbags",
    Default = false,
    Callback = function(a)
        getgenv().e = a
        while e and wait() do
            for i,v in pairs(game:GetService("Workspace")["__THINGS"].Lootbags:GetChildren()) do
if v ~= nil then 
local args = {
[1] = tostring(v),
[2] = Vector3.new(0,0,0)
}
Fire("Collect Lootbag",unpack(args)) end end end
    end
})


--Boost System | Old
local Tab3 = Window:MakeTab({
	Name = "Boost",
	Icon = "rbxassetid://7743866529",
	PremiumOnly = false
})

local Section = Tab3:AddSection({
	Name = "Auto Boost Functions:"
})

Tab3:AddToggle({
    Name = "Auto Use Triple Coins",
    Default = false,
    Callback = function(tric)
    getgenv().kff = tric
    while kff and wait(3) do
local args = {
    [1] = "Triple Coins"
}

if not game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Coins") then
    Fire("Activate Boost",unpack(args))
elseif game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Coins") then
    if game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Coins").TimeLeft.Text <= "00:00:10" then
            Fire("Activate Boost",unpack(args))

    end end end end
})
Tab3:AddToggle({
    Name = "Auto Use Triple Damage",
    Default = false,
    Callback = function(tric)
    getgenv().kff = tric
    while kff and wait(3) do
local args = {
    [1] = "Triple Damage"
}

if not game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Damage") then
    Fire("Activate Boost",unpack(args))
elseif game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Damage") then
    if game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Triple Damage").TimeLeft.Text <= "00:00:10" then
            Fire("Activate Boost",unpack(args))

    end end end end
})
Tab3:AddToggle({
    Name = "Auto Use Super Lucky",
    Default = false,
    Callback = function(tric)
    getgenv().kff = tric
    while kff and wait(3) do
local args = {
    [1] = "Super Lucky"
}

if not game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Super Lucky") then
    Fire("Activate Boost",unpack(args))
elseif game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Super Lucky") then
    if game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Super Lucky").TimeLeft.Text <= "00:00:10" then
            Fire("Activate Boost",unpack(args))

    end end end end
})
Tab3:AddToggle({
    Name = "Auto Use Ultra Lucky",
    Default = false,
    Callback = function(tric)
    getgenv().kff = tric
    while kff and wait(3) do
local args = {
    [1] = "Ultra Lucky"
}

if not game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Ultra Lucky") then
    Fire("Activate Boost",unpack(args))
elseif game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Ultra Lucky") then
    if game.Players.LocalPlayer.PlayerGui.Main.Boosts:FindFirstChild("Ultra Lucky").TimeLeft.Text <= "00:00:10" then
            Fire("Activate Boost",unpack(args))

    end end end end
})



local lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))

--Eggs System | Update
local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://8997385940",
	PremiumOnly = false
})

local EggTracker = EggsTab:AddLabel("Egg Info: don't select")
local EggOpened = EggsTab:AddLabel("Eggs Opened: don't select")
local EggAvaiable = EggsTab:AddLabel("Eggs Can Open: don't select")

function CalculateAvaiableEggs(Egg)
	local EggCost	
	if game.PlaceId == 10321372166 and lib.Directory.Eggs[Egg].hardcoreCost then
		EggCost = lib.Directory.Eggs[Egg].hardcoreCost
	else
		EggCost = lib.Directory.Eggs[Egg].cost
	end
	local EggCurrency = lib.Directory.Eggs[Egg].currency
	if game.PlaceId == 10321372166 then
		local Avaiable = math.ceil(lib.Save.Get().HardcoreCurrency[EggCurrency] / EggCost)
		return Avaiable
	else
		local Avaiable = math.ceil(lib.Save.Get()[EggCurrency] / EggCost)
		return Avaiable
	end
end

local EggDrop = EggsTab:AddDropdown({
    Name = "Select Egg",
    Default = "",
    Options = {"Cracked Egg","Spotted Egg","Wood Egg","Grass Egg","Beachball Egg","Coconut Egg","Cat Egg","Rock Egg","Geode Egg","Snow Egg","Ice Egg","Icicle Egg","Yeti Egg","Cactus Egg","Spiked Egg","Obsidian Egg","Magma Egg","Dominus Egg","Enchanted Egg","Relic Egg","Samurai Egg","Rainbow Egg","Haunted Egg","Hell Egg","Heaven Egg","Empyrean Egg","Dark Tech Egg","Titanium Egg","Tech Egg","Metal Egg","Chemical Egg","Lab Egg","Mechanical Egg","Steampunk Egg","Glitch Egg","Planet Egg","Martian Egg","Alien Egg","Axolotl Egg","Shiny Axolotl Egg","Pixel Egg","Spotted Pixel Egg","Rainbow Pixel Egg","Flower Doodle Egg","Snowy Doodle Egg","Farm Doodle Egg","Tropical Doodle Egg","Barn Doodle Egg","Mushroom Doodle Egg","Safari Doodle Egg","Fairy Doodle Egg","Gem Doodle Egg","Kawaii Egg","Sakura Egg","Cafe Egg","Dojo Egg","Kawaii Alley Egg","Bone Egg","Collar Egg","Dog Egg","Beach Egg","Floatie Egg","Volcano Egg","Tropical Flower Egg","Watermelon Egg","Underwater Egg","Butterfly Egg","Island Egg 1","Island Egg 2","Island Egg 3","Island Egg 4","Island Egg 5","Island Egg 6","Island Egg 7"},
    Callback = function(v)
getgenv().Egg = (v) 
		EggTracker:Set("Egg: "..v)
		if (v) then
			if lib.Save.Get().EggsOpened[getgenv().Egg] ~= nil then 
				if game.PlaceId == 10321372166 and lib.Save.Get().Hardcore.EggsOpened[getgenv().Egg] ~= nil  then
					EggOpened:Set("Eggs Opened: "..lib.Save.Get().Hardcore.EggsOpened[getgenv().Egg])
				elseif lib.Save.Get().EggsOpened[getgenv().Egg] ~= nil then
					EggOpened:Set("Eggs Opened: "..lib.Save.Get().EggsOpened[getgenv().Egg])
				end
				EggAvaiable:Set("Can Open: "..CalculateAvaiableEggs(getgenv().Egg))
			else
				EggOpened:Set("Eggs Opened: 0")
				EggAvaiable:Set("Can Open: "..CalculateAvaiableEggs(getgenv().Egg))
			end
		end	
        end
})

spawn(function()
	while task.wait(1) do
		if getgenv().Egg then 
				if game.PlaceId == 10321372166 and lib.Save.Get().Hardcore.EggsOpened[getgenv().Egg] ~= nil  then
					EggOpened:Set("Eggs Opened: "..lib.Save.Get().Hardcore.EggsOpened[getgenv().Egg])
					EggAvaiable:Set("Can Open: "..CalculateAvaiableEggs(getgenv().Egg))
				elseif lib.Save.Get().EggsOpened[getgenv().Egg] ~= nil then
					EggOpened:Set("Eggs Opened: "..lib.Save.Get().EggsOpened[getgenv().Egg])
					EggAvaiable:Set("Can Open: "..CalculateAvaiableEggs(getgenv().Egg))
				end
		end
	end
end)

local Section = EggsTab:AddSection({
	Name = "Auto Open Eggs"
})

EggsTab:AddToggle({
    Name = "Open Egg x1",
    CurrentValue = false,
    Callback = function(lol)
            getgenv().openEgg1 = lol
    while openEgg1 == true do task.wait(.1)
        if getgenv().goldenMode == true then 
CatHub = {[1] = "Golden "..Egg, [2] = false, [3] = false}
Invoke("Buy Egg",unpack(CatHub))
elseif getgenv().goldenMode == false then
CatHub = {[1] = Egg, [2] = false, [3] = false}
Invoke("Buy Egg",unpack(CatHub))
end end end})

EggsTab:AddToggle({
    Name = "Open Egg x3",
    CurrentValue = false,
    Callback = function(lol)
            getgenv().openEgg3 = lol
    while openEgg3 == true do task.wait(.1)
        if getgenv().goldenMode == true then 
CatHub = {[1] = "Golden "..Egg, [2] = true, [3] = false}
Invoke("Buy Egg",unpack(CatHub))
elseif getgenv().goldenMode == false then
CatHub = {[1] = Egg, [2] = true, [3] = false}
Invoke("Buy Egg",unpack(CatHub))
end end end})

EggsTab:AddToggle({
    Name = "Open Egg x8",
    CurrentValue = false,
    Callback = function(lol)
            getgenv().openEgg8 = lol
    while openEgg8 and wait(.1) do
        if getgenv().goldenMode == true then 
CatHub = {[1] = "Golden "..Egg, [2] = false, [3] = true}
Invoke("Buy Egg",unpack(CatHub))
elseif getgenv().goldenMode == false then
CatHub = {[1] = Egg, [2] = false, [3] = true}
Invoke("Buy Egg",unpack(CatHub))
end end end})

local Section = Tab9:AddSection({
	Name = "Settings"
})

EggsTab:AddToggle({
    Name = "Golden Mode",
    Default = false,
    Callback = function(Value)
        getgenv().goldenMode = Value
    end    
})

EggsTab:AddButton({
	Name = "Remove Animation Egg",
	Callback = function()
        for i,v in pairs(getgc(true)) do
            if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
                v.OpenEgg = function()
                    return
                end end end
  	end    
})

EggsTab:AddToggle({
    Name = "Auto Open/Close Inventory",
    Default = false,
    Callback = function(f)
        getgenv().ff = f
        while ff and wait(getgenv().ffg) do
        game.Players.LocalPlayer.PlayerGui.Inventory.Enabled = true
        wait(.5)
        game.Players.LocalPlayer.PlayerGui.Inventory.Enabled = false 
        end end
})

EggsTab:AddSlider({
	Name = "Wait Time",
	Min = 0,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(fx)  
	    getgenv().ffg = fx end
})

--Pet Misc System | Update
local Tab9 = Window:MakeTab({
	Name = "Pets",
	Icon = "rbxassetid://7743868000",
	PremiumOnly = false
})

local Section = Tab9:AddSection({
    Name = "Auto Rename",
})

Tab9:AddDropdown({
    Name = "Rarity",
    Default = "All",
    Options = {"All","Basic","Rare","Epic","Legendary","Mythical","Event","Secret","Exclusive"},
    Callback = function(lol2)
    getgenv().rarin = lol2 end
})

Tab9:AddTextbox({
	Name = "Name",
	Default = "",
	TextDisappear = false,
	Callback = function(fdd)
getgenv().rname = fdd
end	  
})

Tab9:AddButton({
    Name = "Rename Pets",
    Callback = function()
        local nigger = {}
for i,v in pairs(Library.Save.Get().Pets) do
    if getgenv().rarin == "All" and getgenv().rname ~= nil then
        if v.nk ~= getgenv().rname then
            local args = {
    [1] = v.uid,
    [2] = rname
}
Invoke("Rename Pet",unpack(args))
            task.wait(.87) end 
        elseif getgenv().rarin == "Basic" or "Rare" or "Epic" or "Legendary" or "Mythical" or "Event" or "Secret" or "Exclusive" and getgenv().rname ~= nil then
for i,v in pairs(Library.Save.Get().Pets) do 
        if v.nk ~= getgenv().rname then 
v2 = Library.Directory.Pets[v.id]; 
if v2.rarity == rarin then 
                local args = {
    [1] = v.uid,
    [2] = rname
}
Invoke("Rename Pet",unpack(args)) 
            task.wait(.87)
        end
    end
   end end end end
})

local Section = Tab9:AddSection({
    Name = "Auto Delete",
})

Tab9:AddDropdown({
    Name = "Rarity To Delete",
    Default = "",
    Options = {"Basic","Rare","Epic","Legendary","Mythical","Event"},
    Callback = function(delr)
        getgenv().delf = delr end
})

Tab9:AddToggle({
    Name = "Auto Delete Pets",
    Default = false,
    Callback = function(lol)
        getgenv().del = lol
        while del and wait(.5) do
local Library = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));
local xd = {}
for i,v in pairs(Library.PetCmds.GetEquipped()) do
table.insert(xd,v) end

for i, v in pairs(Library.Save.Get().Pets) do
if not table.find(xd,v) then
    
local v2 = Library.Directory.Pets[v.id]; 
if v2.rarity == delf then 
local args = {
    [1] = {
   [1] = v.uid
    }
}

Invoke("Delete Several Pets", unpack(args)) wait(.5)
end end end
        end end
})

Tab9:AddLabel("Equipped and Exclusive pets are ignored")

local Section = Tab9:AddSection({
    Name = "Pets",
})

Tab9:AddDropdown({
    Name = "Pets To Lock",
    Default = "Equipped",
    Options = {"Equipped","Event","Exclusive","Mythical","Legendary","Epic","Rare","Basic"},
    Callback = function(hh)
    getgenv().rlock = hh end
})

Tab9:AddButton({
    Name = "Lock Pets",
    Callback = function()
        if getgenv().rlock == "Equipped" then
local xxd = {}
   local Library = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));
for i, v in pairs(Library.PetCmds.GetEquipped()) do
        table.insert(xxd, v.uid)
        niggas = 0
for i=1,#xxd do 
    niggas = niggas+1 
    local args2 = {
    [1] = {
[xxd[niggas]] = true

   },
} 
Invoke("Lock Pet",unpack(args2)) task.wait(.8) end end

        else 
LockPets = {} 
for i,v in pairs(Library.Save.Get().Pets) do 
ee = Library.Directory.Pets[v.id]
if ee.rarity == getgenv().rlock  then
    table.insert(LockPets, v.uid) end end 
niggas = 0
for i=1,#LockPets do 
    niggas = niggas+1 
    local args2 = {
    [1] = {
[LockPets[niggas]] = true

   },
} 
Invoke("Lock Pet",unpack(args2)) task.wait(.8) end end
        end 
})

Tab9:AddButton({
    Name = "Unlock Pets",
    Callback = function()
       if getgenv().rlock == "Equipped" then
local xxd = {}
   local Library = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));
for i, v in pairs(Library.PetCmds.GetEquipped()) do
        table.insert(xxd, v.uid)
        niggas = 0
for i=1,#xxd do 
    niggas = niggas+1 
    local args2 = {
    [1] = {
[xxd[niggas]] = false

   },
} 
Invoke("Lock Pet",unpack(args2)) task.wait(.8) end end

        else 
LockPets = {} 
for i,v in pairs(Library.Save.Get().Pets) do 
ee = Library.Directory.Pets[v.id]
if ee.rarity == getgenv().rlock  then
    table.insert(LockPets, v.uid) end end 
niggas = 0
for i=1,#LockPets do 
    niggas = niggas+1 
    local args2 = {
    [1] = {
[LockPets[niggas]] = false

   },
} 
Invoke("Lock Pet",unpack(args2)) task.wait(.8) end end
        end 
})

local Section = Tab9:AddSection({
	Name = "Auto Conveyor"
})


Tab9:AddDropdown({
    Name = "Select Convert Amount",
    Default = "",
    Options = {1,2,3,4,5,6,7,8,9,10},
    Callback = function(am)
        getgenv().amount = am end
})

Tab9:AddToggle({
    Name = "Auto Make Golden",
    Default = false,
    Callback = function(gl)
        getgenv().gold = gl
        while gold == true and wait(1) do
            for i, v in pairs(GetPets()) do
              if #v >= getgenv().amount then
                  if string.find(i, "Normal") then
                      local Args = {}
                      for i= 1, getgenv().amount do
                          Args[#Args+1] = v[#Args+1]
                      end
                      Invoke("Use Golden Machine", Args) end end end end end
}) 

Tab9:AddToggle({
    Name = "Auto Make Rainbow",
    Default = false,
    Callback = function(rb)
        getgenv().rbn = rb
        while rbn == true and wait(1) do
            for i, v in pairs(GetPets()) do
              if #v >= getgenv().amount then
                  if string.find(i, "Gold") then
                      local Args = {}
                      for i= 1, getgenv().amount do
                          Args[#Args+1] = v[#Args+1]
                      end
                      Invoke("Use Rainbow Machine", Args) end end end end end
})

--Gui System | Update
local GuiTab1 = Window:MakeTab({
	Name = "Gui",
	Icon = "rbxassetid://7743869054",
	PremiumOnly = false
})

local Section = GuiTab1:AddSection({
	Name = "Open Gui"
})

GuiTab1:AddButton({
    Name = "Golden Machine",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Golden.Enabled
      end  
})

GuiTab1:AddButton({
    Name = "Rainbow Machine",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Rainbow.Enabled
      end  
})

GuiTab1:AddButton({
    Name = "Merchant",
    Callback = function()
game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Merchant.Enabled
end
})

GuiTab1:AddButton({
    Name = "Fuse Machine",
    Callback = function()
game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.FusePets.Enabled
end
})

GuiTab1:AddButton({
    Name = "Upgrade Machine",
    Callback = function()
game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
game:GetService("Players").LocalPlayer.PlayerGui.Upgrades.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Upgrades.Enabled
end
})


GuiTab1:AddButton({
    Name = "Collection",
    Callback = function()
game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Collection.Enabled
end
})

GuiTab1:AddButton({
    Name = "Bank Machine",
    Callback = function()
game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled
end
})

GuiTab1:AddButton({
    Name = "DarkMatter Machine",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.DarkMatter.Enabled
      end
})

GuiTab1:AddButton({
    Name = "Mailbox",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Enabled
      end
})

GuiTab1:AddButton({
    Name = "Quest Shop",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.QuestShop.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.QuestShop.Enabled
      end
})

GuiTab1:AddButton({
    Name = "Daycare",
    Callback = function()
        game:WaitForChild("Players").LocalPlayer.PlayerGui:WaitForChild("Main")  
        game:GetService("Players").LocalPlayer.PlayerGui.Daycare.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.Daycare.Enabled
      end
})
