Raton = {}
Raton.__index = Raton
Enemigo =  love.graphics.newImage("spr/sin_autor.png")

function Raton:new(x, y) 
    self = setmetatable({},Raton)
    self.x = x
    self.y = y 
    return self
end
function Raton:draw()
    love.graphics.draw( Enemigo,self.x , self.y)
end
