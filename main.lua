window_width = love.graphics.getPixelWidth()
window_height = love.graphics.getPixelHeight()



-- Requirements

Class = require 'src/class'
require 'src/Player'


function love.load()
    background = love.graphics.newImage("assets/background.png")


    love.graphics.setDefaultFilter('nearest', 'nearest')


    player1 = Player(10, 30)

    love.window.setMode(window_width, window_height, {
        vsync = true,
        fullscreen = false,
        resizable = true
    })




    -- push:setupScreen(virtual_width, virtual_height, window_width, window_height, {
    --     vsync = true,
    --     fullscreen = false,
    --     resizable = true
    --     }
    -- )
end


function love.update(dt)
    if love.keyboard.isDown("s") then
        player1.dy = 200
    end
    if love.keyboard.isDown("w") then
        player1.dy = -200
    end
    if love.keyboard.isDown("d") then
        player1.dx = 200
    end
    if love.keyboard.isDown("a") then
        player1.dx = -200
    end
    player1.update(dt)
end


-- function that is called every frame to draw something to the screen
function love.draw()
    -- start rendering

    love.graphics.draw(background, 0, 0)
    player1.render()

end


