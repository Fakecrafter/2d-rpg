
Player = Class{}




function Player:init(x, y)
    self.x = x
    self.y = y

    self.dy = 0
    self.dx = 0

    asset = love.graphics.newImage("assets/Character.png")
end



function Player:update(dt)
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end



function Player:render()
    love.graphics.draw(self.asset, self.x, self.y)
end
