-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by Gillian Gonzales
-- Created On Mar 06 2018
--
-- This code will pick a random number.  
-----------------------------------------------------------------------------------------

--Making varibles
local numberToGuess
local answer 
local answerAsNumber
local correct
local incorrect
--Change background colour
display.setDefault( "background", 1, 1, 1 )

--Displaying Text 
local instructions = display.newText( "Type what number the computer randomly generated", display.contentCenterX, display.contentCenterY -200 , native.systemFont, 60)
instructions:setFillColor( 0, 0, 0 )

-- Displaying Text Field 
local randomChoose = native.newTextField( display.contentCenterX, display.contentCenterY - 50, 450, 150 )

-- Display Button
local calculateButton = display.newImageRect("./assets/sprites/Button.png", 406, 157)
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 150

local computerAnswer = display.newText( "Computer Answer:" , display.contentCenterX, display.contentCenterY + 450, native.systemFont, 75 )
computerAnswer:setFillColor ( 0, 0, 0 )

-- Making function
local function calculateButtonTouch( event )
	--  This function will generate a random number when the button is pressed

	

	math.randomseed(os.time())

	answer = tonumber (randomChoose.text)
	numberToGuess = math.random (1, 6 )

	if answer == numberToGuess then
	local clear = display.newRect(display.contentCenterX, display.contentCenterY + 300, 400, 90 )
	correct = display.newText( "Correct", display.contentCenterX, display.contentCenterY + 300, native.systemFont, 75 )
	correct:setFillColor ( 0, 0, 0 )
	computerAnswer.text = " Computer answer: ".. numberToGuess ..""
	
	elseif answer ~= numberToGuess then
	local clear = display.newRect(display.contentCenterX, display.contentCenterY + 300, 400, 90 )
	incorrect = display.newText( "Incorrect", display.contentCenterX, display.contentCenterY + 300, native.systemFont, 75 )
	incorrect:setFillColor( 0, 0, 0 )
	computerAnswer.text = " Computer answer: ".. numberToGuess ..""
	end

	
	
	
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
