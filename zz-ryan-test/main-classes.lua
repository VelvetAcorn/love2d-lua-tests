io.stdout:setvbuf("no")

local r1, r2, r3

function love.load()
    Object = require "classic"
    --Don't forget to load the file
    require "shape"

    local Rectangle = require "rectangle"

    --Don't forget to load the file
    local Circle = require "circle"
    local Square = require "square"

    r1 = Rectangle(100, 100, 200, 50)

    --We make r2 a Circle instead of a Rectangle
    r2 = Circle(350, 80, 40)
    r3 = Square(500, 100, 30)
end

function love.update(dt)
    --Lua turns this into: r1.update(r1, dt)
    r1:update(dt)
    r2:update(dt)
    r3:update(dt)
end

function love.draw()
    --Lua turns this into: r1.draw(r1)
    r1:draw()
    r2:draw()
    r3:draw()
end