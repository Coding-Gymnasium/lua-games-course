function love.load()
  target = {}
  target.x = 300
  target.y = 300
  target.radius = 50
  score = 0
  timer = 10
  gameFont = love.graphics.newFont(40)

  sprites = {}
  sprites.sky = love.graphics.newImage('assets/sky.png')
  sprites.target = love.graphics.newImage('assets/target.png')
  sprites.crosshairs = love.graphics.newImage('assets/crosshairs.png')
  love.mouse.setVisible(false)
end

function love.update(dt)
  if timer > 0 then
    timer = timer - dt
  end

  if timer < 0 then
    timer = 0
  end
end

function love.draw()
  love.graphics.draw(sprites.sky, 0, 0)
  love.graphics.setColor(1,1,1)
  love.graphics.setFont(gameFont)
  love.graphics.print(score, 0,0)
  love.graphics.print(math.ceil(timer), 300,0)

  love.graphics.draw(sprites.target, target.x - target.radius, target.y - target.radius)
  love.graphics.draw(sprites.crosshairs, love.mouse.getX() - 20, love.mouse.getY() - 20)
end

function love.mousepressed(x, y, button, istouch, presses)
  if button == 1 then
    local mouseToTarget = distanceBetween(x, y, target.x, target.y)
    if mouseToTarget < target.radius then
      score = score + 1
      target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
      target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
    end
  end
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt( (x2 - x1)^2 + (y2 - y1)^2)
end

  -- *-------- Notes: ---------*
--[[
  Drawing an image (png):
  An image x,y is the top left corner of the image

  Calculating distance:
  distance formula:
    d = √(x2 - x1)² + (y₂ - y₁)²
  written in code:
    return math.sqrt( (x2 - x1)^2 + (y2 - y1)^2)

  Mouse interaction:
  love.mousepressed(x, y, button, istouch, presses)
  button values: 1 equals left mouse button, 2 the secondary button.

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
