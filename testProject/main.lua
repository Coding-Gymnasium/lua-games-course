-- message = "Lua is awesome!!!"
local message = 5 -- we can also print numbers
local chicken = 10
local output = chicken + 1 -- prints 11
message = message - 1
-- local chicken = 'math is fun'
-- local output = chicken * 1 -- errors out becuase we are trying to perform math on a string


function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  -- love.graphics.print(output)
  love.graphics.print(message)
end
