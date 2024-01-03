Raton = {}
Raton.__index = Raton
Enemigo =  love.graphics.newImage("spr/sin_autor.png")

function Raton:new(x, y) 
    self = setmetatable({},Raton)
    self.x = x
    self.y = y 
    self.vel = 100
    return self
end
function Raton:update(dt)
    self.y = self.y + (self.vel* dt)
    
end
function Raton:draw()
    love.graphics.draw( Enemigo,self.x , self.y)
end
