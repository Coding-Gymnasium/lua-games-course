-- *----- Variables --------*
-- message = "Lua is awesome!!!"
--[[
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
--]]

-- *----- Conditionals --------*
-- *--- If statements ---*
--[[
local message = 0
local condition = 25

if condition > 0 then
  message = 1
end

if condition <= 0 then
  message = -1
end
--]]

-- *--- If - Else statements ---*

-- if condition > 0 then
--   message = 1
-- else
--   message = -1
-- end

-- *--- If - Elseif statements ---*

--[[
 if condition > 0 then
   message = 1
 elseif condition < -10 then
   message = -1
 else
   message = "no conditions met"
 end

 function love.draw()
   love.graphics.setFont(love.graphics.newFont(50))
   love.graphics.print(message)
 end
--]]

-- *----- While Loops --------*
--[[
local message = 0
local test = 0

-- while message < 10 do
--   message = message + 1
-- end

while message < 100 do
  message = message + 1
  test = test - 5
end

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(message, 0, 0)
  love.graphics.print(test, 0, 60)
end
--]]

-- *----- For Loops --------*
--[[
local message = 0
local test = 0
local pickle = 0

while message < 100 do
  message = message + 1
  test = test - 5
end

-- for i=1, 3, 1 do
--   pickle = pickle + 10
-- end
-- outputs 30

-- for i=10, 3, -1 do
--   pickle = pickle + 10
-- end
-- outputs 80

for i=1, 3, 1 do
  pickle = pickle + i
end
-- outputs 6

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(pickle)
end
--]]

-- *----- Functions --------*
--[[
local message = 0
local chicken = 0

local function increaseMessage(i)
  message = message + i
end

local function double(val)
  val = val * 2
  return val
end

-- increaseMessage(10)

message = double(20)
chicken = double(message)

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(message)
  love.graphics.print(chicken, 0, 60)
end
--]]
-- *----- Global and Local Variables --------*
message = 0 -- global variable

function getHalf(i)
  local var = i -- local variable
  var = var / 2
  return var
end

function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(var) -- errors out becuase var is not a global variable
end
