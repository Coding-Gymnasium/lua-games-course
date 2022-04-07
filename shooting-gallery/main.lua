function love.load()
  target = {}
  target.x = 300
  target.y = 300
  target.radius = 50
  score = 0
  timer = 0
end

function love.update(dt)
end

function love.draw()
  love.graphics.setColor(1,0,0)
  love.graphics.circle("fill", target.x, target.y, target.radius)
end

--[[
  Notes:
  Order:
  Love will display what we draw first at the bottom and the next thing on top.
  For example, if the rectangle is drawn first - appears first in the code -
  and the cirle after and with the same coordinates, the circle will show on
  top.

  Color:
  love.graphics.setColor(red,green,blue)
  0 = none of the color
  1 = as much as possible
  Use decimals for partial values
  love.graphics.setColor(0,0,1) would be blue color
  love.graphics.setColor(1,1,0) would be yellow
  love.graphics.setColor(1,0.4,0) would be orange

  if using colors from an RGB source that uses the 255 scale divide the color numbers by 255.
  for example:
  love.graphics.setColor(204/255, 102/255, 255/255)

  Rectangle:
  love.graphics.rectangle(mode, x, y, width, height)
  mode can be 'fill' or 'line'
  the x, y position of a rectangle is its top left corner.

  Circle:
  the x, y position of a circle is its center.
  love.graphics.circle("fill", 0, 0, 100) -- would be a semi-circle on the top left corner
--]]
