function  love.load ()
require "personaje"
require "autornil"
   math.randomseed(os.time())
    Tanque:init(300, 650)
    Rt = {}
    Tiempo = 30
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
    

end
function love.draw()

    Tanque:draw()
    for i, v in ipairs(Rt) do
        v:draw()
        
    end
end