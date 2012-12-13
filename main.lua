local titleBackground=display.newRect(50,50,200,50)
titleBackground:setFillColor(200,200,200)
local title=display.newText("Tracker",70,55,nil,36)
title:setTextColor(0,0,0)


local widget=require "widget"
local function onButtonRelease(event)
	local btn=event.target
	print("user has pressed and released the button")
	btn:setLabel("doh! not yet !")
end
local button=widget.newButton{
	label="My Location",
	fontSize=20,
	onRelease=onButtonRelease
}
button.x=display.contentWidth*0.5
button.y=display.contentHeight*0.5
