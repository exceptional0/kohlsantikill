local PLAYERS = game:GetService("Players")
local AUTOPUNISH = false
local LOCALPLAYERNAME = game.Players.LocalPlayer.Name
local LOCALPLAYER = game.Players.LocalPlayer
local WHITELISTED = {}
local AUTOPUNISHINGPLAYERS = {}

local function FINDUSER(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    return Found    
end

local function UNWHITELIST(Table,playername)
for i = 1,#Table do
local zZZ = Table[i]
if zZZ == playername then
table.remove(Table,i)
end
end
end



LOCALPLAYER.Chatted:Connect(function(MSG)
if MSG:lower() == "//autopunish" then
if AUTOPUNISH == false then
AUTOPUNISH = true
for i,v in pairs(PLAYERS:GetPlayers()) do
if v.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, v.Name) then
wait(1.25)
PLAYERS:Chat("punish " ..v.Name.. "")
end
end
else
AUTOPUNISH = false
end
end
if MSG:match(" ") then
local splitstring = string.split(MSG, " ")
if splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "wl" and splitstring[3] ~= nil or splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "whitelist" and splitstring[3] ~= nil then
local TOBEWHITELISTEDNAME
for i,v in pairs(FINDUSER(splitstring[3])) do
if v.Name ~= nil then
TOBEWHITELISTEDNAME = v.Name
wait(0)
table.insert(WHITELISTED, TOBEWHITELISTEDNAME)
end
end

elseif splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "unwl" and splitstring[3] ~= nil or splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "unwhitelist" and splitstring[3] ~= nil then
local TOBEUNWHITELISTED
for i,v in pairs(FINDUSER(splitstring[3])) do
if v.Name ~= nil then
TOBEUNWHITELISTED = v.Name
UNWHITELIST(WHITELISTED, TOBEUNWHITELISTED)
end
end

elseif splitstring[1]:lower() == "//autopunish" and splitstring[2]:lower() == "player" and splitstring[3] ~= nil then
local TOBEAUTOPUNISHED
local TOBEAUTOPUNISHEDNAME
for i,v in pairs(FINDUSER(splitstring[3])) do
if v ~= nil and v.Name ~= nil then
TOBEAUTOPUNISHED = v
TOBEAUTOPUNISHEDNAME = v.Name
end
end
if TOBEAUTOPUNISHED ~= nil and TOBEAUTOPUNISHEDNAME ~= nil then
table.insert(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME)

PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")

TOBEAUTOPUNISHED.Chatted:Connect(function(MSGHERE)
if table.find(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME) then
local impstring = string.split(MSGHERE," ")
if impstring[1]:lower() == "unpunish" or impstring[1]:lower() == ":unpunish" or impstring[1]:lower() == "respawn" or impstring[1]:lower() == ":respawn" or impstring[1]:lower() == "reset" or impstring[1]:lower() == ":reset" or impstring[1]:lower() == "char" or impstring[1]:lower() == ":char" or impstring[1]:lower() == "reload" or impstring[1]:lower() == ":reload" and impstring[2] ~= nil then
if impstring[2]:lower() == "me" then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
end
end
end
end)
for i,NOUNPUNISHING in pairs(PLAYERS:GetPlayers()) do
if NOUNPUNISHING.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, NOUNPUNISHING.Name) then
NOUNPUNISHING.Chatted:Connect(function(MESSAGEISHERE)
if table.find(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME) and NOUNPUNISHING.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, NOUNPUNISHING.Name) then
local impstring = string.split(MESSAGEISHERE," ")
if impstring[1]:lower() == "unpunish" or impstring[1]:lower() == ":unpunish" or impstring[1]:lower() == "respawn" or impstring[1]:lower() == ":respawn" or impstring[1]:lower() == "reset" or impstring[1]:lower() == ":reset" or impstring[1]:lower() == "char" or impstring[1]:lower() == ":char" or impstring[1]:lower() == "reload" or impstring[1]:lower() == ":reload" and impstring[2] ~= nil then
for i,v in pairs(FINDUSER(impstring[2])) do
if v.Name ~= nil then
if v.Name == TOBEAUTOPUNISHEDNAME then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
wait(0.2)
PLAYERS:Chat("punish " ..NOUNPUNISHING.Name.. "")
end
end
end
if splitstring[2]:lower() == "all" or splitstring[2]:lower() == "others" or splitstring[2]:lower() == "admins" then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
wait(0.2)
PLAYERS:Chat("punish " ..NOUNPUNISHING.Name "")
end
end
end
end)
end
end
end

PLAYERS.PlayerAdded:Connect(function(NOUNPUNISHING2)
if NOUNPUNISHING2.Name ~= LOCALPLAYERNAME and table.find(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME) and not table.find(WHITELISTED, NOUNPUNISHING2.Name) then
NOUNPUNISHING2.Chatted:Connect(function(MESSAGEISHERE)
if table.find(AUTOPUNISHINGPLAYERS, TOBEAUTOPUNISHEDNAME) and NOUNPUNISHING2.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, NOUNPUNISHING2.Name) then
local impstring = string.split(MESSAGEISHERE," ")
if impstring[1]:lower() == "unpunish" or impstring[1]:lower() == ":unpunish" or impstring[1]:lower() == "respawn" or impstring[1]:lower() == ":respawn" or impstring[1]:lower() == "reset" or impstring[1]:lower() == ":reset" or impstring[1]:lower() == "char" or impstring[1]:lower() == ":char" or impstring[1]:lower() == "reload" or impstring[1]:lower() == ":reload" and impstring[2] ~= nil then
for i,v in pairs(FINDUSER(impstring[2])) do
if v.Name ~= nil then
if v.Name == TOBEAUTOPUNISHEDNAME then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
wait(0.2)
PLAYERS:Chat("punish " ..NOUNPUNISHING2.Name.. "")
end
end
end
if splitstring[2]:lower() == "all" or splitstring[2]:lower() == "others" or splitstring[2]:lower() == "admins" then
PLAYERS:Chat("punish " ..TOBEAUTOPUNISHEDNAME.. "")
wait(0.2)
PLAYERS:Chat("punish " ..NOUNPUNISHING2.Name "")
end
end
end
end)
end
end)
end
elseif splitstring[1]:lower() == "//autopunishoff" and splitstring[2]:lower() == "player" and splitstring[3] ~= nil then
local fishsfolly
for i,v in pairs(FINDUSER(splitstring[3])) do
if v.Name ~= nil then
if table.find(AUTOPUNISHINGPLAYERS, v.Name) then
UNWHITELIST(AUTOPUNISHINGPLAYERS, v.Name)
end
end
end

end
end)


for i,v in pairs(PLAYERS:GetPlayers()) do
if v.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, v.Name) then
v.Chatted:Connect(function(MESSAGE)
if MESSAGE:match(" ") and AUTOPUNISH == true and not table.find(WHITELISTED, v.Name) then
	local splitstring = string.split(MESSAGE, " ")
	local VICTIMSNAME = v.Name
	local targetname
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" or splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" or splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" or splitstring[1]:lower() == "char" or splitstring[1]:lower() == ":char" or splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
	if splitstring[2]:lower() ~= "me" then
	for i,z in pairs(FINDUSER(splitstring[2])) do
	if z.Name ~= nil then
	targetname = z.Name
	PLAYERS:Chat("punish " ..targetname.. "")
	end
	end
	end
	if splitstring[2]:lower() == "all" then
	for i,x in pairs(PLAYERS:GetPlayers()) do
	if x.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, x.Name) then
	wait(0.5)
	PLAYERS:Chat("punish " ..x.Name.. "")
	end
	end	
	elseif splitstring[2]:lower() == "me" then
	PLAYERS:Chat("punish " ..v.Name.. "")
	end
	--end if splitstring[1]:lower() == "unpunish" or ect then below
	end
	end
	if MESSAGE:match("/") and AUTOPUNISH == true then
	local splitstring = string.split(MESSAGE, "/")
	local VICTIMSNAME = v.Name
	local targetname
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" or splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" or splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" or splitstring[1]:lower() == "char" or splitstring[1]:lower() == ":char" or splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
	if splitstring[2]:lower() ~= "me" then
	for i,z in pairs(FINDUSER(splitstring[2])) do
	if z.Name ~= nil then
	targetname = z.Name
	PLAYERS:Chat("punish " ..targetname.. "")
	end
	end
	end
	if splitstring[2]:lower() == "all" then
	for i,x in pairs(PLAYERS:GetPlayers()) do
	if x.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, x.Name) then
	wait(0.5)
	PLAYERS:Chat("punish " ..x.Name.. "")
	end
	end	
	elseif splitstring[2]:lower() == "me" then
	PLAYERS:Chat("punish " ..v.Name.. "")
	end
	--end if splitstring[1]:lower() == "unpunish" then below
	end
	end
	end)
	end
	end
	
	
	PLAYERS.PlayerAdded:Connect(function(VICTIMJOINED)
	if VICTIMJOINED.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, VICTIMJOINED.Name) then
	if AUTOPUNISH == true then
	PLAYERS:Chat("respawn " ..VICTIMJOINED.Name.. "")
	wait(0.4)
	PLAYERS:Chat("punish " ..VICTIMJOINED.Name.. "")
	end
	VICTIMJOINED.Chatted:Connect(function(MESSAGE)
	if MESSAGE:match(" ") and AUTOPUNISH == true and not table.find(WHITELISTED, VICTIMJOINED.Name) then
	local splitstring = string.split(MESSAGE, " ")
	local VICTIMSNAME = VICTIMJOINED.Name
	local targetname
	
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" or splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" or splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" or splitstring[1]:lower() == "char" or splitstring[1]:lower() == ":char" or splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
	if splitstring[2]:lower() ~= "me" then
	for i,z in pairs(FINDUSER(splitstring[2])) do
	if z.Name ~= nil then
	targetname = z.Name
	PLAYERS:Chat("punish " ..targetname.. "")
	end
	end
	end
	if splitstring[2]:lower() == "all" then
	for i,x in pairs(PLAYERS:GetPlayers()) do
	if x.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, x.Name) then
	wait(0.5)
	PLAYERS:Chat("punish " ..x.Name.. "")
	end
	end	
	elseif splitstring[2]:lower() == "me" then
	PLAYERS:Chat("punish " ..VICTIMJOINED.Name.. "")
	end
	--end if splitstring[1]:lower() == "unpunish" then below
	end
	end
	if MESSAGE:match("/") and AUTOPUNISH == true then
	local splitstring = string.split(MESSAGE, "/")
	local VICTIMSNAME = VICTIMJOINED.Name
	local targetname
	
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" or splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" or splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" or splitstring[1]:lower() == "char" or splitstring[1]:lower() == ":char" or splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
	if splitstring[2]:lower() ~= "me" then
	for i,z in pairs(FINDUSER(splitstring[2])) do
	if z.Name ~= nil then
	targetname = z.Name
	PLAYERS:Chat("punish " ..targetname.. "")
	end
	end
	end
	if splitstring[2]:lower() == "all" then
	for i,x in pairs(PLAYERS:GetPlayers()) do
	if x.Name ~= LOCALPLAYERNAME and not table.find(WHITELISTED, x.Name) then
	wait(0.5)
	PLAYERS:Chat("punish " ..x.Name.. "")
	end
	end	
	elseif splitstring[2]:lower() == "me" then
	PLAYERS:Chat("punish " ..VICTIMJOINED.Name.. "")
	end
	--end if splitstring[1]:lower() == "unpunish" then below
	end
	end
	end)
	
	end
	end)


	--hi
