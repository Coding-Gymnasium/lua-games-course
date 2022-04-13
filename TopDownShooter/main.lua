function love.load()
  sprites = {}
  sprites.background = love.graphics.newImage('assets/sprites/background.png')
  sprites.bullet = love.graphics.newImage('assets/sprites/bullet.png')
  sprites.player = love.graphics.newImage('assets/sprites/player.png')
  sprites.zombie = love.graphics.newImage('assets/sprites/zombie.png')
end

function love.update(dt)
end

function love.draw()
  love.graphics.draw(sprites.background, 0, 0)
end
