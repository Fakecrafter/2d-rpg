
push = require 'src/push'

window_width = love.graphics.getPixelWidth()
window_height = love.graphics.getPixelHeight()


x_speed = 200
y_speed = 200


function love.load()
    character = love.graphics.newImage("assets/Character.png")
    love.graphics.setDefaultFilter('nearest', 'nearest')

    love.window.setMode(window_width, window_height, {
        vsync = true,
        fullscreen = false,
        resizable = true
    })

    -- set the x and y position for the player
    x = window_width / 2
    y = window_height / 2



    -- push:setupScreen(virtual_width, virtual_height, window_width, window_height, {
    --     vsync = true,
    --     fullscreen = false,
    --     resizable = true
    --     }
    -- )
end


function love.update(dt)
    if love.keyboard.isDown("s") then
        y = y + y_speed * dt
    end
    if love.keyboard.isDown("w") then
        y = y - y_speed * dt
    end
    if love.keyboard.isDown("d") then
        x = x + x_speed * dt
    end
    if love.keyboard.isDown("a") then
        x = x - x_speed * dt
    end
end


-- function that is called every frame to draw something to the screen
function love.draw()
    -- start rendering in the virtual resolution
    -- push:start()
    love.graphics.draw(character, x, y)

    -- push:finish()
end


