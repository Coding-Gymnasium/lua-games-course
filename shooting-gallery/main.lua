function love.load()
end

function love.update(dt)
end

function love.draw()
  -- love.graphics.rectangle(mode, x, y, width, height)
  -- mode can be 'fill' or 'line'
  -- the x, y position of a rectangle is its top left corner.
  love.graphics.rectangle("fill", 0, 0, 200, 100)
  -- the x, y position of a circle is its center.
  -- love.graphics.circle("fill", 0, 0, 100) -- would be a semi-circle on the top left corner
  love.graphics.circle("fill", 300, 200, 100)
end
