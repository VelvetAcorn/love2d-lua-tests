io.stdout:setvbuf("no")

function love.load()
    x = 400
    fruits = {"apple", "orange", "banana", "mango"}
    table.insert(fruits, "pineapple")
    table.insert(fruits, 1, "pear")
    table.insert(fruits, 3, "watermelon")
    table.remove(fruits, 4)
    fruits[1] = "tomato"
    print(#fruits)
    for i=1,#fruits do
        print(fruits[i])
    end
    rect = {}
    rect.x = 100
    rect.y = 100
    rect.width = 70
    rect.height = 90
    rect.speed = 100
end

function love.draw()
    love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.height)
    for i,fruit in ipairs(fruits) do
        love.graphics.print(fruit,100, 100 + 50*i)
    end
end

function love.update(dt)
    rect.x = rect.x + rect.speed * dt
end