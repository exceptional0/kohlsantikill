local PLAYERS = game:GetService("Players")
local AUTOPUNISH = false
local LOCALPLAYERNAME = game.Players.LocalPlayer.Name
local LOCALPLAYER = game.Players.LocalPlayer
local WHITELISTED = {}

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
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" then
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
	elseif splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" then
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
	elseif splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" then
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
	elseif splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
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
	if MESSAGE:match("/") and AUTOPUNISH == true then
	local splitstring = string.split(MESSAGE, "/")
	local VICTIMSNAME = v.Name
	local targetname
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" then
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
	elseif splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" then
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
	elseif splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" then
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
	elseif splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
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
	
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" then
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
	
	elseif splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" then
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
	
	elseif splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" then
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
	
	elseif splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
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
	
	if splitstring[1]:lower() == "unpunish" or splitstring[1]:lower() == ":unpunish" then
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
	
	elseif splitstring[1]:lower() == "respawn" or splitstring[1]:lower() == ":respawn" then
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
	
	elseif splitstring[1]:lower() == "reset" or splitstring[1]:lower() == ":reset" then
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
	
	elseif splitstring[1]:lower() == "reload" or splitstring[1]:lower() == ":reload" then
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
