local thornstable = {}
local thornsvictims = game:GetService("Players")
local inflictthornsdamage = game:GetService("Players")
local thornsuser = thornsvictims.LocalPlayer
local thornsusername = thornsuser.Name
local thornstoggle = false
function checkif(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    return Found    
end

local function givethorns(user)
local thornsuser2 = user
local thornsusername2 = thornsuser2.Name

table.insert(thornstable,thornsusername2)
wait(0)

for i,v in pairs(thornsvictims:GetPlayers()) do
if v.Name ~= thornsusername2 then
v.Chatted:Connect(function(talking)
if talking:match(" ") and table.find(thornstable,thornsusername2) then
	local splitstring = string.split(talking, " ")
	local chicken = game:GetService("Players")
	local victims = splitstring[2]
	local victim = splitstring[2]
	local victimname = v.Name
	for i,z in pairs(checkif(victim)) do
	victim = z.Name
	if splitstring[1]:lower() == "kill" and victim == thornsusername2 or splitstring[1]:lower() == "kill" and victims:lower() == "all" or splitstring[1]:lower() == "kill" and victims:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername2 or splitstring[1]:lower() == ":kill" and victims:lower() == "all" or splitstring[1]:lower() == ":kill" and victims:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername2 or splitstring[1]:lower() == "explode" and victims:lower() == "all" or splitstring[1]:lower() == "explode" and victims:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername2 or splitstring[1]:lower() == ":explode" and victims:lower() == "all" or splitstring[1]:lower() == ":explode" and victims:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername2 or splitstring[1]:lower() == "respawn" and victims:lower() == "all" or splitstring[1]:lower() == "respawn" and victims:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername2 or splitstring[1]:lower() == ":respawn" and victims:lower() == "all" or splitstring[1]:lower() == ":respawn" and victims:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername2 or splitstring[1]:lower() == "unff" and victims:lower() == "all" or splitstring[1]:lower() == "unff" and victims:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername2 or splitstring[1]:lower() == ":unff" and victims:lower() == "all" or splitstring[1]:lower() == ":unff" and victims:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername2 or splitstring[1]:lower() == "fling" and victims:lower() == "all" or splitstring[1]:lower() == "fling" and victims:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername2 or splitstring[1]:lower() == ":fling" and victims:lower() == "all" or splitstring[1]:lower() == ":fling" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername2 or splitstring[1]:lower() == "stun" and victims:lower() == "all" or splitstring[1]:lower() == "stun" and victims:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername2 or splitstring[1]:lower() == ":stun" and victims:lower() == "all" or splitstring[1]:lower() == ":stun" and victims:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername2 or splitstring[1]:lower() == "fire" and victims:lower() == "all" or splitstring[1]:lower() == "fire" and victims:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername2 or splitstring[1]:lower() == ":fire" and victims:lower() == "all" or splitstring[1]:lower() == ":fire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername2 or splitstring[1]:lower() == "bonfire" and victims:lower() == "all" or splitstring[1]:lower() == "bonfire" and victims:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername2 or splitstring[1]:lower() == ":bonfire" and victims:lower() == "all" or splitstring[1]:lower() == ":bonfire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername2 or splitstring[1]:lower() == "reset" and victims:lower() == "all" or splitstring[1]:lower() == "reset" and victims:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername2 or splitstring[1]:lower() == ":reset" and victims:lower() == "all" or splitstring[1]:lower() == ":reset" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername2 or splitstring[1]:lower() == "jail" and victims:lower() == "all" or splitstring[1]:lower() == "jail" and victims:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername2 or splitstring[1]:lower() == ":jail" and victims:lower() == "all" or splitstring[1]:lower() == ":jail" and victims:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername2 or splitstring[1]:lower() == "punish" and victims:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername2 or splitstring[1]:lower() == ":punish" and victims:lower() == "all" or splitstring[1]:lower() == ":punish" and victims:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername2 or splitstring[1]:lower() == "ungod" and victims:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername2 or splitstring[1]:lower() == ":ungod" and victims:lower() == "all" or splitstring[1]:lower() == ":ungod" and victims:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername2 or splitstring[1]:lower() == "damage" and victims:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername2 or splitstring[1]:lower() == ":damage" and victims:lower() == "all" or splitstring[1]:lower() == ":damage" and victims:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername2 or splitstring[1]:lower() == "setgrav" and victims:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername2 or splitstring[1]:lower() == ":setgrav" and victims:lower() == "all" or splitstring[1]:lower() == ":setgrav" and victims:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername2 or splitstring[1]:lower() == "speed" and victims:lower() == "all" or splitstring[1]:lower() == "speed" and victims:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername2 or splitstring[1]:lower() == ":speed" and victims:lower() == "all" or splitstring[1]:lower() == ":speed" and victims:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername2 or splitstring[1]:lower() == "name" and victims:lower() == "all" or splitstring[1]:lower() == "name" and victims:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername2 or splitstring[1]:lower() == ":name" and victims:lower() == "all" or splitstring[1]:lower() == ":name" and victims:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername2.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername2 or splitstring[1]:lower() == "blind" and victims:lower() == "all" or splitstring[1]:lower() == "blind" and victims:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername2 or splitstring[1]:lower() == ":blind" and victims:lower() == "all" or splitstring[1]:lower() == ":blind" and victims:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername2 or splitstring[1]:lower() == "removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == "removelimbs" and victims:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername2 or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername2 or splitstring[1]:lower() == "creeper" and victims:lower() == "all" or splitstring[1]:lower() == "creeper" and victims:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername2 or splitstring[1]:lower() == ":creeper" and victims:lower() == "all" or splitstring[1]:lower() == ":creeper" and victims:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	elseif splitstring[1]:lower() == "health" and victim == thornsusername2 or splitstring[1]:lower() == "health" and victims:lower() == "all" or splitstring[1]:lower() == "health" and victims:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername2 or splitstring[1]:lower() == ":health" and victims:lower() == "all" or splitstring[1]:lower() == ":health" and victims:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername2 or splitstring[1]:lower() == "noclip" and victims:lower() == "all" or splitstring[1]:lower() == "noclip" and victims:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername2 or splitstring[1]:lower() == ":noclip" and victims:lower() == "all" or splitstring[1]:lower() == ":noclip" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	elseif splitstring[1]:lower() == "char" and victim == thornsusername2 or splitstring[1]:lower() == "char" and victims:lower() == "all" or splitstring[1]:lower() == "char" and victims:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername2 or splitstring[1]:lower() == ":char" and victims:lower() == "all" or splitstring[1]:lower() == ":char" and victims:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername2 or splitstring[1]:lower() == "seizure" and victims:lower() == "all" or splitstring[1]:lower() == "seizure" and victims:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername2 or splitstring[1]:lower() == ":seizure" and victims:lower() == "all" or splitstring[1]:lower() == ":seizure" and victims:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername2 or splitstring[1]:lower() == "infect" and victims:lower() == "all" or splitstring[1]:lower() == "infect" and victims:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername2 or splitstring[1]:lower() == ":infect" and victims:lower() == "all" or splitstring[1]:lower() == ":infect" and victims:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername2 or splitstring[1]:lower() == "freeze" and victims:lower() == "all" or splitstring[1]:lower() == "freeze" and victims:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername2 or splitstring[1]:lower() == ":freeze" and victims:lower() == "all" or splitstring[1]:lower() == ":freeze" and victims:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername2 or splitstring[1]:lower() == "clone" and victims:lower() == "all" or splitstring[1]:lower() == "clone" and victims:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername2 or splitstring[1]:lower() == ":clone" and victims:lower() == "all" or splitstring[1]:lower() == ":clone" and victims:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername2 or splitstring[1]:lower() == "noobify" and victims:lower() == "all" or splitstring[1]:lower() == "noobify" and victims:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername2 or splitstring[1]:lower() == ":noobify" and victims:lower() == "all" or splitstring[1]:lower() == ":noobify" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername2 or splitstring[1]:lower() == "spin" and victims:lower() == "all" or splitstring[1]:lower() == "spin" and victims:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername2 or splitstring[1]:lower() == ":spin" and victims:lower() == "all" or splitstring[1]:lower() == ":spin" and victims:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername2 or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername2 or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	--end if string == "kill" then
	end
	end
	end
	end)
	end
	end

thornsvictims.PlayerAdded:Connect(function(victimhasjoined)
if victimhasjoined ~= thornsuser then
local victimname = victimhasjoined.Name
victimhasjoined.Chatted:Connect(function(talking2)
if talking:match(" ") and table.find(thornstable,thornsusername2) then
	local splitstring = string.split(talking2, " ")
	local chicken = game:GetService("Players")
	local victims = splitstring[2]
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	victim = v.Name
	if splitstring[1]:lower() == "kill" and victim == thornsusername2 or splitstring[1]:lower() == "kill" and victims:lower() == "all" or splitstring[1]:lower() == "kill" and victims:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername2 or splitstring[1]:lower() == ":kill" and victims:lower() == "all" or splitstring[1]:lower() == ":kill" and victims:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername2 or splitstring[1]:lower() == "explode" and victims:lower() == "all" or splitstring[1]:lower() == "explode" and victims:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername2 or splitstring[1]:lower() == ":explode" and victims:lower() == "all" or splitstring[1]:lower() == ":explode" and victims:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername2 or splitstring[1]:lower() == "respawn" and victims:lower() == "all" or splitstring[1]:lower() == "respawn" and victims:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername2 or splitstring[1]:lower() == ":respawn" and victims:lower() == "all" or splitstring[1]:lower() == ":respawn" and victims:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername2 or splitstring[1]:lower() == "unff" and victims:lower() == "all" or splitstring[1]:lower() == "unff" and victims:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername2 or splitstring[1]:lower() == ":unff" and victims:lower() == "all" or splitstring[1]:lower() == ":unff" and victims:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername2 or splitstring[1]:lower() == "fling" and victims:lower() == "all" or splitstring[1]:lower() == "fling" and victims:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername2 or splitstring[1]:lower() == ":fling" and victims:lower() == "all" or splitstring[1]:lower() == ":fling" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername2 or splitstring[1]:lower() == "stun" and victims:lower() == "all" or splitstring[1]:lower() == "stun" and victims:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername2 or splitstring[1]:lower() == ":stun" and victims:lower() == "all" or splitstring[1]:lower() == ":stun" and victims:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername2 or splitstring[1]:lower() == "fire" and victims:lower() == "all" or splitstring[1]:lower() == "fire" and victims:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername2 or splitstring[1]:lower() == ":fire" and victims:lower() == "all" or splitstring[1]:lower() == ":fire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername2 or splitstring[1]:lower() == "bonfire" and victims:lower() == "all" or splitstring[1]:lower() == "bonfire" and victims:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername2 or splitstring[1]:lower() == ":bonfire" and victims:lower() == "all" or splitstring[1]:lower() == ":bonfire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername2 or splitstring[1]:lower() == "reset" and victims:lower() == "all" or splitstring[1]:lower() == "reset" and victims:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername2 or splitstring[1]:lower() == ":reset" and victims:lower() == "all" or splitstring[1]:lower() == ":reset" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername2 or splitstring[1]:lower() == "jail" and victims:lower() == "all" or splitstring[1]:lower() == "jail" and victims:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername2 or splitstring[1]:lower() == ":jail" and victims:lower() == "all" or splitstring[1]:lower() == ":jail" and victims:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername2 or splitstring[1]:lower() == "punish" and victims:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername2 or splitstring[1]:lower() == ":punish" and victims:lower() == "all" or splitstring[1]:lower() == ":punish" and victims:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername2 or splitstring[1]:lower() == "ungod" and victims:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername2 or splitstring[1]:lower() == ":ungod" and victims:lower() == "all" or splitstring[1]:lower() == ":ungod" and victims:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername2 or splitstring[1]:lower() == "damage" and victims:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername2 or splitstring[1]:lower() == ":damage" and victims:lower() == "all" or splitstring[1]:lower() == ":damage" and victims:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername2 or splitstring[1]:lower() == "setgrav" and victims:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername2 or splitstring[1]:lower() == ":setgrav" and victims:lower() == "all" or splitstring[1]:lower() == ":setgrav" and victims:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername2 or splitstring[1]:lower() == "speed" and victims:lower() == "all" or splitstring[1]:lower() == "speed" and victims:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername2 or splitstring[1]:lower() == ":speed" and victims:lower() == "all" or splitstring[1]:lower() == ":speed" and victims:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername2 or splitstring[1]:lower() == "name" and victims:lower() == "all" or splitstring[1]:lower() == "name" and victims:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername2 or splitstring[1]:lower() == ":name" and victims:lower() == "all" or splitstring[1]:lower() == ":name" and victims:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername2.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername2 or splitstring[1]:lower() == "blind" and victims:lower() == "all" or splitstring[1]:lower() == "blind" and victims:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername2 or splitstring[1]:lower() == ":blind" and victims:lower() == "all" or splitstring[1]:lower() == ":blind" and victims:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername2 or splitstring[1]:lower() == "removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == "removelimbs" and victims:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername2 or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername2 or splitstring[1]:lower() == "creeper" and victims:lower() == "all" or splitstring[1]:lower() == "creeper" and victims:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername2 or splitstring[1]:lower() == ":creeper" and victims:lower() == "all" or splitstring[1]:lower() == ":creeper" and victims:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	elseif splitstring[1]:lower() == "health" and victim == thornsusername2 or splitstring[1]:lower() == "health" and victims:lower() == "all" or splitstring[1]:lower() == "health" and victims:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername2 or splitstring[1]:lower() == ":health" and victims:lower() == "all" or splitstring[1]:lower() == ":health" and victims:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername2 or splitstring[1]:lower() == "noclip" and victims:lower() == "all" or splitstring[1]:lower() == "noclip" and victims:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername2 or splitstring[1]:lower() == ":noclip" and victims:lower() == "all" or splitstring[1]:lower() == ":noclip" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	elseif splitstring[1]:lower() == "char" and victim == thornsusername2 or splitstring[1]:lower() == "char" and victims:lower() == "all" or splitstring[1]:lower() == "char" and victims:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername2 or splitstring[1]:lower() == ":char" and victims:lower() == "all" or splitstring[1]:lower() == ":char" and victims:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername2 or splitstring[1]:lower() == "seizure" and victims:lower() == "all" or splitstring[1]:lower() == "seizure" and victims:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername2 or splitstring[1]:lower() == ":seizure" and victims:lower() == "all" or splitstring[1]:lower() == ":seizure" and victims:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername2 or splitstring[1]:lower() == "infect" and victims:lower() == "all" or splitstring[1]:lower() == "infect" and victims:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername2 or splitstring[1]:lower() == ":infect" and victims:lower() == "all" or splitstring[1]:lower() == ":infect" and victims:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername2 or splitstring[1]:lower() == "freeze" and victims:lower() == "all" or splitstring[1]:lower() == "freeze" and victims:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername2 or splitstring[1]:lower() == ":freeze" and victims:lower() == "all" or splitstring[1]:lower() == ":freeze" and victims:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername2 or splitstring[1]:lower() == "clone" and victims:lower() == "all" or splitstring[1]:lower() == "clone" and victims:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername2 or splitstring[1]:lower() == ":clone" and victims:lower() == "all" or splitstring[1]:lower() == ":clone" and victims:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername2 or splitstring[1]:lower() == "noobify" and victims:lower() == "all" or splitstring[1]:lower() == "noobify" and victims:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername2 or splitstring[1]:lower() == ":noobify" and victims:lower() == "all" or splitstring[1]:lower() == ":noobify" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername2 or splitstring[1]:lower() == "spin" and victims:lower() == "all" or splitstring[1]:lower() == "spin" and victims:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername2 or splitstring[1]:lower() == ":spin" and victims:lower() == "all" or splitstring[1]:lower() == ":spin" and victims:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername2 or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername2 or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	--end if string == "kill" then
	end
	end
	end
	end)
	end
	end)
end

local function clearthorns(Table,playername)
for i = 1,#Table do
local zZZ = Table[i]
if zZZ == playername then
table.remove(Table,i)
end
end
end

thornsvictims.PlayerRemoving:Connect(function(deltable)
	if table.find(thornstable, deltable.Name) then 
	clearthorns(thornstable, deltable.Name)
	end
	end)

thornsuser.Chatted:Connect(function(message)
if message:lower() == "//thorns" then
if thornstoggle == false then
thornstoggle = true
print("thorns on!")
else
thornstoggle = false
print("thorns off.")
end
elseif message:match(" ") then
local splitstring = string.split(message, " ")
if splitstring[1]:lower() == "//thornswl" and splitstring[2] ~= nil then
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	victim = v
	end
	if victim ~= nil then
	givethorns(victim)
	print("gave thorns to " ..victim.Name.. "!")
	end
	end
	elseif splitstring[1]:lower() == "//rthorns" and splitstring[2] ~= nil then
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	victim = v.Name
	end
	if victim ~= nil then
	clearthorns(thornstable,victim)
	print("cleared away the thorns surrounding " ..victim.Name.. ".")
	end
end
end)

for i,v in pairs(thornsvictims:GetPlayers()) do
if v.Name ~= thornsusername then
v.Chatted:Connect(function(talking)
if talking:match(" ") and thornstoggle == true then
	local splitstring = string.split(talking, " ")
	local chicken = game:GetService("Players")
	local victims = splitstring[2]
	local victim = splitstring[2]
	local victimname = v.Name
	for i,z in pairs(checkif(victim)) do
	victim = z.Name
	if splitstring[1]:lower() == "kill" and victim == thornsusername or splitstring[1]:lower() == "kill" and victims:lower() == "all" or splitstring[1]:lower() == "kill" and victims:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername or splitstring[1]:lower() == ":kill" and victims:lower() == "all" or splitstring[1]:lower() == ":kill" and victims:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername or splitstring[1]:lower() == "explode" and victims:lower() == "all" or splitstring[1]:lower() == "explode" and victims:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername or splitstring[1]:lower() == ":explode" and victims:lower() == "all" or splitstring[1]:lower() == ":explode" and victims:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername or splitstring[1]:lower() == "respawn" and victims:lower() == "all" or splitstring[1]:lower() == "respawn" and victims:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername or splitstring[1]:lower() == ":respawn" and victims:lower() == "all" or splitstring[1]:lower() == ":respawn" and victims:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername or splitstring[1]:lower() == "unff" and victims:lower() == "all" or splitstring[1]:lower() == "unff" and victims:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername or splitstring[1]:lower() == ":unff" and victims:lower() == "all" or splitstring[1]:lower() == ":unff" and victims:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername or splitstring[1]:lower() == "fling" and victims:lower() == "all" or splitstring[1]:lower() == "fling" and victims:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername or splitstring[1]:lower() == ":fling" and victims:lower() == "all" or splitstring[1]:lower() == ":fling" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername or splitstring[1]:lower() == "stun" and victims:lower() == "all" or splitstring[1]:lower() == "stun" and victims:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername or splitstring[1]:lower() == ":stun" and victims:lower() == "all" or splitstring[1]:lower() == ":stun" and victims:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername or splitstring[1]:lower() == "fire" and victims:lower() == "all" or splitstring[1]:lower() == "fire" and victims:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername or splitstring[1]:lower() == ":fire" and victims:lower() == "all" or splitstring[1]:lower() == ":fire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername or splitstring[1]:lower() == "bonfire" and victims:lower() == "all" or splitstring[1]:lower() == "bonfire" and victims:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername or splitstring[1]:lower() == ":bonfire" and victims:lower() == "all" or splitstring[1]:lower() == ":bonfire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername or splitstring[1]:lower() == "reset" and victims:lower() == "all" or splitstring[1]:lower() == "reset" and victims:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername or splitstring[1]:lower() == ":reset" and victims:lower() == "all" or splitstring[1]:lower() == ":reset" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername or splitstring[1]:lower() == "jail" and victims:lower() == "all" or splitstring[1]:lower() == "jail" and victims:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername or splitstring[1]:lower() == ":jail" and victims:lower() == "all" or splitstring[1]:lower() == ":jail" and victims:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername or splitstring[1]:lower() == "punish" and victims:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername or splitstring[1]:lower() == ":punish" and victims:lower() == "all" or splitstring[1]:lower() == ":punish" and victims:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername or splitstring[1]:lower() == "ungod" and victims:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername or splitstring[1]:lower() == ":ungod" and victims:lower() == "all" or splitstring[1]:lower() == ":ungod" and victims:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername or splitstring[1]:lower() == "damage" and victims:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername or splitstring[1]:lower() == ":damage" and victims:lower() == "all" or splitstring[1]:lower() == ":damage" and victims:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername or splitstring[1]:lower() == "setgrav" and victims:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername or splitstring[1]:lower() == ":setgrav" and victims:lower() == "all" or splitstring[1]:lower() == ":setgrav" and victims:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername or splitstring[1]:lower() == "speed" and victims:lower() == "all" or splitstring[1]:lower() == "speed" and victims:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername or splitstring[1]:lower() == ":speed" and victims:lower() == "all" or splitstring[1]:lower() == ":speed" and victims:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername or splitstring[1]:lower() == "name" and victims:lower() == "all" or splitstring[1]:lower() == "name" and victims:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername or splitstring[1]:lower() == ":name" and victims:lower() == "all" or splitstring[1]:lower() == ":name" and victims:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername or splitstring[1]:lower() == "blind" and victims:lower() == "all" or splitstring[1]:lower() == "blind" and victims:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername or splitstring[1]:lower() == ":blind" and victims:lower() == "all" or splitstring[1]:lower() == ":blind" and victims:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername or splitstring[1]:lower() == "removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == "removelimbs" and victims:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername or splitstring[1]:lower() == "creeper" and victims:lower() == "all" or splitstring[1]:lower() == "creeper" and victims:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername or splitstring[1]:lower() == ":creeper" and victims:lower() == "all" or splitstring[1]:lower() == ":creeper" and victims:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	elseif splitstring[1]:lower() == "health" and victim == thornsusername or splitstring[1]:lower() == "health" and victims:lower() == "all" or splitstring[1]:lower() == "health" and victims:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername or splitstring[1]:lower() == ":health" and victims:lower() == "all" or splitstring[1]:lower() == ":health" and victims:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername or splitstring[1]:lower() == "noclip" and victims:lower() == "all" or splitstring[1]:lower() == "noclip" and victims:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername or splitstring[1]:lower() == ":noclip" and victims:lower() == "all" or splitstring[1]:lower() == ":noclip" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	elseif splitstring[1]:lower() == "char" and victim == thornsusername or splitstring[1]:lower() == "char" and victims:lower() == "all" or splitstring[1]:lower() == "char" and victims:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername or splitstring[1]:lower() == ":char" and victims:lower() == "all" or splitstring[1]:lower() == ":char" and victims:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername or splitstring[1]:lower() == "seizure" and victims:lower() == "all" or splitstring[1]:lower() == "seizure" and victims:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername or splitstring[1]:lower() == ":seizure" and victims:lower() == "all" or splitstring[1]:lower() == ":seizure" and victims:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername or splitstring[1]:lower() == "infect" and victims:lower() == "all" or splitstring[1]:lower() == "infect" and victims:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername or splitstring[1]:lower() == ":infect" and victims:lower() == "all" or splitstring[1]:lower() == ":infect" and victims:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername or splitstring[1]:lower() == "freeze" and victims:lower() == "all" or splitstring[1]:lower() == "freeze" and victims:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername or splitstring[1]:lower() == ":freeze" and victims:lower() == "all" or splitstring[1]:lower() == ":freeze" and victims:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername or splitstring[1]:lower() == "clone" and victims:lower() == "all" or splitstring[1]:lower() == "clone" and victims:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername or splitstring[1]:lower() == ":clone" and victims:lower() == "all" or splitstring[1]:lower() == ":clone" and victims:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername or splitstring[1]:lower() == "noobify" and victims:lower() == "all" or splitstring[1]:lower() == "noobify" and victims:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername or splitstring[1]:lower() == ":noobify" and victims:lower() == "all" or splitstring[1]:lower() == ":noobify" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername or splitstring[1]:lower() == "spin" and victims:lower() == "all" or splitstring[1]:lower() == "spin" and victims:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername or splitstring[1]:lower() == ":spin" and victims:lower() == "all" or splitstring[1]:lower() == ":spin" and victims:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	--end if string == "kill" then
	end
	end
	end
	end)
	end
	end

thornsvictims.PlayerAdded:Connect(function(victimhasjoined)
if victimhasjoined ~= thornsuser then
local victimname = victimhasjoined.Name
victimhasjoined.Chatted:Connect(function(talking2)
if talking:match(" ") and thornstoggle == true then
	local splitstring = string.split(talking2, " ")
	local chicken = game:GetService("Players")
	local victims = splitstring[2]
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	victim = v.Name
	if splitstring[1]:lower() == "kill" and victim == thornsusername or splitstring[1]:lower() == "kill" and victims:lower() == "all" or splitstring[1]:lower() == "kill" and victims:lower() == "others" or splitstring[1]:lower() == ":kill" and victim == thornsusername or splitstring[1]:lower() == ":kill" and victims:lower() == "all" or splitstring[1]:lower() == ":kill" and victims:lower() == "others" then
	inflictthornsdamage:Chat("kill " ..victimname.. "")	
	elseif splitstring[1]:lower() == "explode" and victim == thornsusername or splitstring[1]:lower() == "explode" and victims:lower() == "all" or splitstring[1]:lower() == "explode" and victims:lower() == "others" or splitstring[1]:lower() == ":explode" and victim == thornsusername or splitstring[1]:lower() == ":explode" and victims:lower() == "all" or splitstring[1]:lower() == ":explode" and victims:lower() == "others" then
	inflictthornsdamage:Chat("explode " ..victimname.. "")
	elseif splitstring[1]:lower() == "respawn" and victim == thornsusername or splitstring[1]:lower() == "respawn" and victims:lower() == "all" or splitstring[1]:lower() == "respawn" and victims:lower() == "others" or splitstring[1]:lower() == ":respawn" and victim == thornsusername or splitstring[1]:lower() == ":respawn" and victims:lower() == "all" or splitstring[1]:lower() == ":respawn" and victims:lower() == "others" then
	inflictthornsdamage:Chat("respawn " ..victimname.. "")
	elseif splitstring[1]:lower() == "unff" and victim == thornsusername or splitstring[1]:lower() == "unff" and victims:lower() == "all" or splitstring[1]:lower() == "unff" and victims:lower() == "others" or splitstring[1]:lower() == ":unff" and victim == thornsusername or splitstring[1]:lower() == ":unff" and victims:lower() == "all" or splitstring[1]:lower() == ":unff" and victims:lower() == "others" then
	inflictthornsdamage:Chat("unff " ..victimname.. "")
	elseif splitstring[1]:lower() == "fling" and victim == thornsusername or splitstring[1]:lower() == "fling" and victims:lower() == "all" or splitstring[1]:lower() == "fling" and victims:lower() == "others" or splitstring[1]:lower() == ":fling" and victim == thornsusername or splitstring[1]:lower() == ":fling" and victims:lower() == "all" or splitstring[1]:lower() == ":fling" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fling " ..victimname.. "")
	elseif splitstring[1]:lower() == "stun" and victim == thornsusername or splitstring[1]:lower() == "stun" and victims:lower() == "all" or splitstring[1]:lower() == "stun" and victims:lower() == "others" or splitstring[1]:lower() == ":stun" and victim == thornsusername or splitstring[1]:lower() == ":stun" and victims:lower() == "all" or splitstring[1]:lower() == ":stun" and victims:lower() == "others" then
	inflictthornsdamage:Chat("stun " ..victimname.. "")
	elseif splitstring[1]:lower() == "fire" and victim == thornsusername or splitstring[1]:lower() == "fire" and victims:lower() == "all" or splitstring[1]:lower() == "fire" and victims:lower() == "others" or splitstring[1]:lower() == ":fire" and victim == thornsusername or splitstring[1]:lower() == ":fire" and victims:lower() == "all" or splitstring[1]:lower() == ":fire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("fire " ..victimname.. "")
	elseif splitstring[1]:lower() == "bonfire" and victim == thornsusername or splitstring[1]:lower() == "bonfire" and victims:lower() == "all" or splitstring[1]:lower() == "bonfire" and victims:lower() == "others" or splitstring[1]:lower() == ":bonfire" and victim == thornsusername or splitstring[1]:lower() == ":bonfire" and victims:lower() == "all" or splitstring[1]:lower() == ":bonfire" and victims:lower() == "others" then
	inflictthornsdamage:Chat("bonfire " ..victimname.. "")
	elseif splitstring[1]:lower() == "reset" and victim == thornsusername or splitstring[1]:lower() == "reset" and victims:lower() == "all" or splitstring[1]:lower() == "reset" and victims:lower() == "others" or splitstring[1]:lower() == ":reset" and victim == thornsusername or splitstring[1]:lower() == ":reset" and victims:lower() == "all" or splitstring[1]:lower() == ":reset" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reset " ..victimname.. "")
	elseif splitstring[1]:lower() == "jail" and victim == thornsusername or splitstring[1]:lower() == "jail" and victims:lower() == "all" or splitstring[1]:lower() == "jail" and victims:lower() == "others" or splitstring[1]:lower() == ":jail" and victim == thornsusername or splitstring[1]:lower() == ":jail" and victims:lower() == "all" or splitstring[1]:lower() == ":jail" and victims:lower() == "others" then
	inflictthornsdamage:Chat("jail " ..victimname.. "")
	elseif splitstring[1]:lower() == "punish" and victim == thornsusername or splitstring[1]:lower() == "punish" and victims:lower() == "all" or splitstring[1]:lower() == "punish" and victims:lower() == "others" or splitstring[1]:lower() == ":punish" and victim == thornsusername or splitstring[1]:lower() == ":punish" and victims:lower() == "all" or splitstring[1]:lower() == ":punish" and victims:lower() == "others" then
	inflictthornsdamage:Chat("punish " ..victimname.. "")
	elseif splitstring[1]:lower() == "ungod" and victim == thornsusername or splitstring[1]:lower() == "ungod" and victims:lower() == "all" or splitstring[1]:lower() == "ungod" and victims:lower() == "others" or splitstring[1]:lower() == ":ungod" and victim == thornsusername or splitstring[1]:lower() == ":ungod" and victims:lower() == "all" or splitstring[1]:lower() == ":ungod" and victims:lower() == "others" then
	inflictthornsdamage:Chat("ungod " ..victimname.. "")
	elseif splitstring[1]:lower() == "damage" and victim == thornsusername or splitstring[1]:lower() == "damage" and victims:lower() == "all" or splitstring[1]:lower() == "damage" and victims:lower() == "others" or splitstring[1]:lower() == ":damage" and victim == thornsusername or splitstring[1]:lower() == ":damage" and victims:lower() == "all" or splitstring[1]:lower() == ":damage" and victims:lower() == "others" then
	inflictthornsdamage:Chat("damage " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "setgrav" and victim == thornsusername or splitstring[1]:lower() == "setgrav" and victims:lower() == "all" or splitstring[1]:lower() == "setgrav" and victims:lower() == "others" or splitstring[1]:lower() == ":setgrav" and victim == thornsusername or splitstring[1]:lower() == ":setgrav" and victims:lower() == "all" or splitstring[1]:lower() == ":setgrav" and victims:lower() == "others" then
	inflictthornsdamage:Chat("setgrav " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "speed" and victim == thornsusername or splitstring[1]:lower() == "speed" and victims:lower() == "all" or splitstring[1]:lower() == "speed" and victims:lower() == "others" or splitstring[1]:lower() == ":speed" and victim == thornsusername or splitstring[1]:lower() == ":speed" and victims:lower() == "all" or splitstring[1]:lower() == ":speed" and victims:lower() == "others" then
	inflictthornsdamage:Chat("speed " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "name" and victim == thornsusername or splitstring[1]:lower() == "name" and victims:lower() == "all" or splitstring[1]:lower() == "name" and victims:lower() == "others" or splitstring[1]:lower() == ":name" and victim == thornsusername or splitstring[1]:lower() == ":name" and victims:lower() == "all" or splitstring[1]:lower() == ":name" and victims:lower() == "others" then
	inflictthornsdamage:Chat("name " ..victimname.. " " ..thornsusername.. "'s")
	elseif splitstring[1]:lower() == "blind" and victim == thornsusername or splitstring[1]:lower() == "blind" and victims:lower() == "all" or splitstring[1]:lower() == "blind" and victims:lower() == "others" or splitstring[1]:lower() == ":blind" and victim == thornsusername or splitstring[1]:lower() == ":blind" and victims:lower() == "all" or splitstring[1]:lower() == ":blind" and victims:lower() == "others" then
	inflictthornsdamage:Chat("blind " ..victimname.. "")
	elseif splitstring[1]:lower() == "removelimbs" and victim == thornsusername or splitstring[1]:lower() == "removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == "removelimbs" and victims:lower() == "others" or splitstring[1]:lower() == ":removelimbs" and victim == thornsusername or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "all" or splitstring[1]:lower() == ":removelimbs" and victims:lower() == "others" then
	inflictthornsdamage:Chat("removelimbs " ..victimname.. "")
	elseif splitstring[1]:lower() == "creeper" and victim == thornsusername or splitstring[1]:lower() == "creeper" and victims:lower() == "all" or splitstring[1]:lower() == "creeper" and victims:lower() == "others" or splitstring[1]:lower() == ":creeper" and victim == thornsusername or splitstring[1]:lower() == ":creeper" and victims:lower() == "all" or splitstring[1]:lower() == ":creeper" and victims:lower() == "others" then
	inflictthornsdamage:Chat("creeper " ..victimname.. "")
	elseif splitstring[1]:lower() == "health" and victim == thornsusername or splitstring[1]:lower() == "health" and victims:lower() == "all" or splitstring[1]:lower() == "health" and victims:lower() == "others" or splitstring[1]:lower() == ":health" and victim == thornsusername or splitstring[1]:lower() == ":health" and victims:lower() == "all" or splitstring[1]:lower() == ":health" and victims:lower() == "others" then
	inflictthornsdamage:Chat("health " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "noclip" and victim == thornsusername or splitstring[1]:lower() == "noclip" and victims:lower() == "all" or splitstring[1]:lower() == "noclip" and victims:lower() == "others" or splitstring[1]:lower() == ":noclip" and victim == thornsusername or splitstring[1]:lower() == ":noclip" and victims:lower() == "all" or splitstring[1]:lower() == ":noclip" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noclip " ..victimname.. "")
	elseif splitstring[1]:lower() == "char" and victim == thornsusername or splitstring[1]:lower() == "char" and victims:lower() == "all" or splitstring[1]:lower() == "char" and victims:lower() == "others" or splitstring[1]:lower() == ":char" and victim == thornsusername or splitstring[1]:lower() == ":char" and victims:lower() == "all" or splitstring[1]:lower() == ":char" and victims:lower() == "others" then
	inflictthornsdamage:Chat("char " ..victimname.. " " ..splitstring[3].. "")
	elseif splitstring[1]:lower() == "seizure" and victim == thornsusername or splitstring[1]:lower() == "seizure" and victims:lower() == "all" or splitstring[1]:lower() == "seizure" and victims:lower() == "others" or splitstring[1]:lower() == ":seizure" and victim == thornsusername or splitstring[1]:lower() == ":seizure" and victims:lower() == "all" or splitstring[1]:lower() == ":seizure" and victims:lower() == "others" then
	inflictthornsdamage:Chat("seizure " ..victimname.. "")
	elseif splitstring[1]:lower() == "infect" and victim == thornsusername or splitstring[1]:lower() == "infect" and victims:lower() == "all" or splitstring[1]:lower() == "infect" and victims:lower() == "others" or splitstring[1]:lower() == ":infect" and victim == thornsusername or splitstring[1]:lower() == ":infect" and victims:lower() == "all" or splitstring[1]:lower() == ":infect" and victims:lower() == "others" then
	inflictthornsdamage:Chat("infect " ..victimname.. "")
	elseif splitstring[1]:lower() == "freeze" and victim == thornsusername or splitstring[1]:lower() == "freeze" and victims:lower() == "all" or splitstring[1]:lower() == "freeze" and victims:lower() == "others" or splitstring[1]:lower() == ":freeze" and victim == thornsusername or splitstring[1]:lower() == ":freeze" and victims:lower() == "all" or splitstring[1]:lower() == ":freeze" and victims:lower() == "others" then
	inflictthornsdamage:Chat("freeze " ..victimname.. "")
	elseif splitstring[1]:lower() == "clone" and victim == thornsusername or splitstring[1]:lower() == "clone" and victims:lower() == "all" or splitstring[1]:lower() == "clone" and victims:lower() == "others" or splitstring[1]:lower() == ":clone" and victim == thornsusername or splitstring[1]:lower() == ":clone" and victims:lower() == "all" or splitstring[1]:lower() == ":clone" and victims:lower() == "others" then
	inflictthornsdamage:Chat("clone " ..victimname.. "")
	elseif splitstring[1]:lower() == "noobify" and victim == thornsusername or splitstring[1]:lower() == "noobify" and victims:lower() == "all" or splitstring[1]:lower() == "noobify" and victims:lower() == "others" or splitstring[1]:lower() == ":noobify" and victim == thornsusername or splitstring[1]:lower() == ":noobify" and victims:lower() == "all" or splitstring[1]:lower() == ":noobify" and victims:lower() == "others" then
	inflictthornsdamage:Chat("noobify " ..victimname.. "")
	elseif splitstring[1]:lower() == "spin" and victim == thornsusername or splitstring[1]:lower() == "spin" and victims:lower() == "all" or splitstring[1]:lower() == "spin" and victims:lower() == "others" or splitstring[1]:lower() == ":spin" and victim == thornsusername or splitstring[1]:lower() == ":spin" and victims:lower() == "all" or splitstring[1]:lower() == ":spin" and victims:lower() == "others" then
	inflictthornsdamage:Chat("spin " ..victimname.. "")
	elseif splitstring[1]:lower() == "reload" and victim == thornsusername or splitstring[1]:lower() == "reload" and victims:lower() == "all" or splitstring[1]:lower() == "reload" and victims:lower() == "others" or splitstring[1]:lower() == ":reload" and victim == thornsusername or splitstring[1]:lower() == ":reload" and victims:lower() == "all" or splitstring[1]:lower() == ":reload" and victims:lower() == "others" then
	inflictthornsdamage:Chat("reload " ..victimname.. "")
	--end if string == "kill" then
	end
	end
	end
	end)
	end
	end)
	
