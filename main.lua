local dortgen = display.newRect(70,130,350,100)
local daire=display.newCircle(300,300,100)
local yazi=display.newText("Zaman",50,150,native.systemFont,100)
dortgen:setFillColor(50,150,250)
daire:setFillColor(200,250,200)
yazi:setTextColor(200,50,70)
local cizgi  = display.newLine(0,30,480,30)
cizgi.width=4

local g1=display.newGroup()
g1:insert(3,dortgen)
g1:insert(2,daire)
g1:insert(1,yazi)
g1.y=200