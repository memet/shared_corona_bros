-- Bouncing Ball --
local xdirection,ydirection=1,1
local xpos,ypos=display.contentWidth*0.5,display.contentHeight*0.5
local circle = display.newCircle(xpos,ypos,20)
circle:setFillColor(255,0,0,255)

local function animate(event)
	xpos=xpos+(2.8*xdirection)
	ypos=ypos+(2.2*ydirection)
	
	if (xpos>display.contentWidth-20 or xpos<20) then
		xdirection=xdirection*-1
	end
	if (ypos>display.contentHeight-20 or ypos<20) then
		ydirection=ydirection*-1
	end
	circle:translate(xpos-circle.x,ypos-circle.y)
end
a=1
local myListener = function(event)
	print(circle.x)
	a=a+1
end


Runtime:addEventListener("enterFrame",animate)
Runtime:addEventListener("enterFrame",myListener)