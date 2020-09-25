local thornstable = {}
local thornsvictims = game:GetService("Players")
local inflictthornsdamage = game:GetService("Players")
local thornsuser = thornsvictims.LocalPlayer
local thornsusername = thornsuser.Name
local thornstoggle = false
function checkif(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
    if Target == "all" then
        for i,v in pairs(game.Players:GetPlayers()) do
            table.insert(Found,v)
        end
    elseif Target == "others" then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                table.insert(Found,v)
            end
        end   
	elseif Target == "me" then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name == game.Players.LocalPlayer.Name then
                table.insert(Found,v)
            end
        end  
    else
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end

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
local splitstring = string.split(msg, " ")
if splitstring[1]:lower() == "thornswl" then
	local victim = splitstring[2]
	for i,v in pairs(checkif(victim)) do
	victim = v.Name
	end
	table.insert(thornstable, v.Name)
	end
end
end)

for i,v in pairs(thornsvictims:GetPlayers()) do
if v.Name ~= thornsusername then
victimhasjoined.Chatted:Connect(function(talking)
if talking:match(" ") and thornstoggle == true then
	local splitstring = string.split(msg, " ")
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
victimhasjoined.Chatted:Connect(function(talking)
if talking:match(" ") and thornstoggle == true then
	local splitstring = string.split(msg, " ")
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
	--end if string == "kill" then
	end
	end
	end
	end)
	end
	end)
	
