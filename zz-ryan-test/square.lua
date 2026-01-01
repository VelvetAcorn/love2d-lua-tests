local Shape = require "shape" 

--Lua turns this into: Object.extend(Object)
local Square = Shape:extend()

--Lua turns this into: Square.new(self)
function Square:new(x, y, length)
    Square.super.new(self, x, y)
    self.length = length
    self.speed = 50
end

--Lua turns this into: Square.update(self, dt)
function Square:update(dt)
    self.x = self.x + self.speed * dt
end

--Lua turns this into: Square.draw(self)
function Square:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.length, self.length)
end

return Square