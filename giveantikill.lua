local whohasantikill = {
antikillon = {}
}



--get player
function getplrr(String) -- Credits to Timeless/xFunnieuss/reviz admin/oofkohls v2
    local Found = {}
    local Target = String:lower()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    return Found    
end

local lPlPlPl = game.Players.LocalPlayer
local PlPlPl = lPlPlPl.Chatted
local plrimp = game:GetService("Players")

plrimp.PlayerRemoving:Connect(function(deltable)
	if table.find(whohasantikill.antikillon, deltable.Name) then 
	removeantikill(whohasantikill.antikillon, deltable.Name)
	end
	end)
	
local function removeantikill(Table,playername)
for i = 1,#Table do
local zZZ = Table[i]
if zZZ == playername then
table.remove(Table,i)
end
end
end


local function antikill(target,toggle)
if toggle == true then
local Praisebeetothebubble = tostring(target)

print("gave antikill to: " ..Praisebeetothebubble.. "")
for i,v in pairs(getplrr(Praisebeetothebubble)) do
	local whomst = v
	local giveantikill = v.Character
	local giveantikillstring = v.Name
	local debuggiveantikill = tostring(giveantikill)
	table.insert(whohasantikill.antikillon, giveantikillstring)
	
	print("antikillstring is: " ..giveantikillstring.. "")
	print("debuggiveantikill is: " ..debuggiveantikill.. "")
	print("added for dev reasons will remove these prints soon!")
	game:GetService'Players':Chat("god " ..giveantikillstring.. "")
	giveantikill.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and table.find(whohasantikill.antikillon, giveantikillstring) then
	game:GetService'Players':Chat("god " ..giveantikillstring.. "")
	end
	end)
	
	game:GetService("Players"):Chat(":ff " ..giveantikillstring.. "")
	giveantikill.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and table.find(whohasantikill.antikillon, giveantikillstring) then
	game:GetService("Players"):Chat("ff " ..giveantikillstring.. "")
	end
	end)
	
	giveantikill:WaitForChild("Humanoid").Died:Connect(function(doometernal)
    if table.find(whohasantikill.antikillon, giveantikillstring) then 
	
	game:GetService("Players"):Chat("reset " ..giveantikillstring.. "")
	
	wait(0.2)
	
	game:GetService("Players"):Chat("god " ..giveantikillstring.. "")
	game:GetService("Players"):Chat("ff " ..giveantikillstring.. "")
	
	
	giveantikill.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and table.find(whohasantikill.antikillon, giveantikillstring) then
	game:GetService("Players"):Chat("god " ..giveantikillstring.. "")
	end
	end)
	
	giveantikill.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and table.find(whohasantikill.antikillon, giveantikillstring) then
	game:GetService("Players"):Chat("ff " ..giveantikillstring.. "")
	end
	end)
	end
	end)

	--// Anti Spam Kill (On Death Restart)
	whomst.CharacterAdded:connect(function(char)
	local whomst = v
	local giveantikill = v.Character
	local giveantikillstring = v.Name
	giveantikill:WaitForChild("Humanoid").Died:Connect(function(doometernal)
	
    if table.find(whohasantikill.antikillon, giveantikillstring) then 
	
	game:GetService("Players"):Chat("reset " ..giveantikillstring.. "")
	
	wait(0.2)
	
	game:GetService("Players"):Chat("god " ..giveantikillstring.. "")
	game:GetService("Players"):Chat("ff " ..giveantikillstring.. "")
	
	
	giveantikill.Humanoid.Changed:Connect(function(egg)
	if egg == "Health" and table.find(whohasantikill.antikillon, giveantikillstring) then
	game:GetService("Players"):Chat("god " ..giveantikillstring.. "")
	end
	end)
	
	giveantikill.ChildRemoved:Connect(function(Object)
	if Object:IsA("ForceField") and table.find(whohasantikill.antikillon, giveantikillstring) then
	game:GetService("Players"):Chat("ff " ..giveantikillstring.. "")
	end
	end)
	end
	end)
	end)
	end
	
	elseif toggle == false then
	local Praisebeetothebubble = tostring(target)

	for i,v in pairs(getplrr(Praisebeetothebubble)) do
	local delantikillstr = v.Name
	removeantikill(whohasantikill.antikillon, delantikillstr)

end
end
end

--command form is the superior form (even for hiding it, /c system)
PlPlPl:Connect(function(bRainfReeze)
if bRainfReeze:match("//giveantikill") then
	local splitstring = string.split(bRainfReeze, " ")
	local tHisIsString2 = splitstring[2]
	
	for i,v in pairs(getplrr(tHisIsString2)) do
	local givemepls = v.Name
	antikill(givemepls,true)
	end
	
end
end)

--yar har your antikill is now mine
PlPlPl:Connect(function(fReezebRain)
if fReezebRain:match("//removeantikill") then
	local splitstring = string.split(fReezebRain, " ")
	local tHisIsString2 = splitstring[2]
	
	for i,v in pairs(getplrr(tHisIsString2)) do
	local givemepls = v.Name
	antikill(givemepls,false)
	end
	
end
end)
