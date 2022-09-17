HttpService = game:GetService("HttpService")
local PlayerService = game:GetService("Players")

local longitude = HttpService:JSONDecode(HttpService:GetAsync('http://ip-api.com/json/')).lon

-- Starter GUI > Server Identifier (ScreenGUI) > ServerRegion (TextLabel)
local GUI = game:GetService("StarterGui")
local region = GUI.ServerIdentifier.ServerRegion

region.Text = "Server: Unavailable"

if(longitude>-180 and longitude<=-105)then
	region.Text = "Server: US West"

elseif(longitude>-105 and longitude<=-90)then
	region.Text = "Server: US Central"

elseif(longitude>-90 and longitude<=0)then
	region.Text = "Server: US East"

elseif(longitude<=75 and longitude>0)then
	region.Text = "Server: Europe"

elseif(longitude<=180 and longitude>75)then
	region.Text = "Server: Australia"

end
