function  love.load ()
require "personaje"
require "autornil"
require "torreta"
Fondo = love.graphics.newImage("spr/Fondos.png")
   math.randomseed(os.time())
    Tanque:init(300, 300)
    Torreta:init(Tanque.x, Tanque.y)
    Rt = {}
    Tiempo = 150
end
function love.update(dt)
    
    

    if Tiempo == 0 then
        local x = math.random(1, 600)
        local y = -10
        table.insert(Rt, Raton:new(x, y))
      Tiempo = 30
       else
        Tiempo = Tiempo - 1
    end
    for i, v in ipairs(Rt) do
        v:update(dt)
    end
  
    Tanque:update(dt)
    Torreta:update(dt)

end
function love.draw()
    love.graphics.draw(Fondo, 0, 0)
    Tanque:draw()
    Torreta:draw()
    for i, v in ipairs(Rt) do
        v:draw()
        
    end
    
end
