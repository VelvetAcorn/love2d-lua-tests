io.stdout:setvbuf("no")


function love.update(dt)
    tick.update(dt)
end

function love.load()
    tick = require("tick")
    drawRectangle = false
    tick.delay(function() drawRectangle = true end, 2)
end

function love.draw()
    if drawRectangle then
        love.graphics.rectangle("fill", 100, 100, 100, 100)
    end
end