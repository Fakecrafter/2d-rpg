
push = require 'src/push'

window_width = 1280
window_height = 720

virtual_width  = 432
virtual_height = 243

x_speed = 50
y_speed = 50


function love.load()
    character = love.graphics.newImage("assets/Character.png")
    love.graphics.setDefaultFilter('nearest', 'nearest')

    -- set the x and y position for the player
    x = virtual_width / 2
    y = virtual_height / 2


    push:setupScreen(virtual_width, virtual_height, window_width, window_height, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
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


function love.draw()
    -- start rendering in the virtual resolution
    push:apply('start')

    love.graphics.draw(character, x, y)

    push:apply('end')
end


