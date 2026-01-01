io.stdout:setvbuf("no")

function love.load()
    myImage = love.graphics.newImage("img/sheep.png")
    love.graphics.setBackgroundColor(1, 1, 1)
    width = myImage:getWidth()
    height = myImage:getHeight()
end

function love.draw()
    love.graphics.setColor(255/255, 200/255, 40/255, 127/255)
    love.graphics.setColor(1, 0.78, 0.15, 0.5)
    -- Or ...
    love.graphics.draw(myImage, 100, 100)
    -- Not passing an argument for alpha automatically sets it to 1 again.
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(myImage, 200, 100)
    love.graphics.draw(myImage, 300, 100, 0, 1, 1, width/2, height/2)
    -- https://love2d.org/wiki/love.graphics.draw
    -- love.graphics.draw( drawable, x, y, r, sx, sy, ox, oy, kx, ky )

end