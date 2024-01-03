Tanque = {}
Jugador = love.graphics.newImage("spr/Cuerpo.png")
function Tanque:init(x,y)
    Tanque.x = x
    Tanque.y = y
    Tanque.speen = 150

end
function Tanque:update(dt)
    if love.keyboard.isDown("left") then
        Tanque.x = Tanque.x - (Tanque.speen * dt )

        elseif love.keyboard.isDown("right") then
            Tanque.x = Tanque.x + (Tanque.speen * dt)
           
    end
    if love.keyboard.isDown("up") then
        Tanque.y = Tanque.y - (Tanque.speen * dt )
        elseif love.keyboard.isDown("down") then
            Tanque.y = Tanque.y + (Tanque.speen * dt )
    end
    
end


function Tanque:draw()
    love.graphics.draw(Jugador, Tanque.x , Tanque.y)
    
end