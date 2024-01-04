Torreta = {}
Fusil = love.graphics.newImage("spr/Torreta.png")

function Torreta:init(x, y)
    Torreta.x = x
    Torreta.y = y
    Torreta.angulo = 0
    Torreta.speen = 150
end
function Torreta:update(dt)
    Torreta.x = Tanque.x  
    Torreta.y = Tanque.y 
    if love.keyboard.isDown("a") then
        Torreta.angulo = Torreta.angulo + 1 * dt

        elseif love.keyboard.isDown("d") then

            Torreta.angulo = Torreta.angulo - 1 * dt


        end
end
function Torreta:draw()
    function Torreta:draw()
       
        love.graphics.draw(Fusil , Torreta.x, Torreta.y , Torreta.angulo , 1 , 1 , 32 , 102)
    end
end