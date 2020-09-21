--exceptionals esp creation function (exceptional#8287)
--uuucreate(parentpath,color,transval,howhigh)
local randomnum = math.random(1,999999)
local randomnum2 = math.random(1,999999)
local randomnum3 = math.random(1,999999)

function uuucreate(parentpath,color,transval,howhigh,text)
	--witchesbrew = string color, 
	--pepsi = lowered string ver of color, 
	--theimportantcolor1 = new color from pepsi
	local witchesbrew = tostring(color)
	local pepsi = witchesbrew:lower()
	local theimportantcolor1 = ""
	local textstr = tostring(text)
	local textcolor = "textcolor"
	--colors
	if pepsi == "black" then
		theimportantcolor1 = Color3.new(0, 0, 0)
		textcolor = Color3.new(1, 1, 1)
	elseif pepsi == "red" then
		theimportantcolor1 = Color3.new(0.921569, 0.0196078, 0.0196078)
		textcolor = Color3.new(0, 0, 0)
	elseif pepsi == "purple" then
		theimportantcolor1 = Color3.new(0.333333, 0, 1)
		textcolor = Color3.new(0, 0, 0)
	elseif pepsi == "green" then
		theimportantcolor1 = Color3.new(0.0745098, 0.992157, 0.00784314)
		textcolor = Color3.new(0, 0, 0)
	elseif pepsi == "orange" then
		theimportantcolor1 = Color3.new(0.976471, 0.439216, 0)
		textcolor = Color3.new(0, 0, 0)
	elseif pepsi == "white" then
		theimportantcolor1 = Color3.new(1, 1, 1)
		textcolor = Color3.new(0,0,0)
	elseif pepsi == "blue" then
		theimportantcolor1 = Color3.new(0, 0.47451, 0.917647)
		textcolor = Color3.new(255, 0, 0)
	elseif pepsi == "pink" then
		theimportantcolor1 = Color3.new(1, 0, 0.984314)
		textcolor = Color3.new(0, 0, 0)
	elseif pepsi == "yellow" then
		theimportantcolor1 = Color3.new(0.972549, 0.972549, 0)
		textcolor = Color3.new(0, 0, 0)
	end
	--creation
	local theimportante = Instance.new("BillboardGui")
	theimportante.Parent = parentpath
	theimportante.StudsOffset = Vector3.new(0,howhigh,0)
	theimportante.Size = UDim2.new(2,0,2,0)
	theimportante.Name = tostring(randomnum)
	theimportante.AlwaysOnTop = true
	local eggheadedclown = Instance.new("Frame")
	eggheadedclown.Parent = theimportante
	eggheadedclown.Size = UDim2.new(1,0,1,0)
	eggheadedclown.Name = tostring(randomnum2)
	eggheadedclown.BackgroundColor3 = theimportantcolor1
	eggheadedclown.BackgroundTransparency = 0.3
	local clownfish = Instance.new("TextLabel")
	clownfish.Parent = eggheadedclown
	clownfish.Name = tostring(randomnum3)
	clownfish.Text = textstr
	clownfish.TextSize = 18
	clownfish.TextColor3 = textcolor
	clownfish.BackgroundTransparency = 1
end
