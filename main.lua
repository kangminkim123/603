-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on: kangmin
-- created by: Mar 22
-----------------------------------------------------------------------------------------

local myText = display.newText( "what to day:", 500, 200, systemFont, 85)
myText:setFillColor( 1, 0, 0)

local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 550, 400, 150)
dayTextField.id = "day TextField"

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png",  400, 157 )
calculateButton.x = ( display.contentCenterX - 0)
calculateButton.y = (display.contentCenterY - 350)
calculateButton.id = "calculate button"

local function calculateButtonFuction( event )
    
    local clear2 = display.newRect(display.contentCenterX + 500, display.contentCenterY + 400, 500, 200 )
    clear2:setFillColor( 0, 0, 0)
    
    local clear1 = display.newRect(display.contentCenterX + 500, display.contentCenterY + 400, 500, 200 )
    clear1:setFillColor( 0, 0, 0)
	
    local answerAsday = (dayTextField.text)

	if answerAsday == "saturday" then
	
		local saturdayText = display.newText( "It is weekend", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)

	elseif answerAsday == "sunday" then

		local sundayText = display.newText( "It is weekend", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)
	
	elseif answerAsday == "monday" then
	
		local onedayText = display.newText( "It is oneday", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)

	elseif answerAsday == nil then

		local notdayText = display.newText( "It isn't day", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)

	end
end

calculateButton:addEventListener( "touch", calculateButtonFuction)