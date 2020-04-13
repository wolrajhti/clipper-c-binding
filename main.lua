local WORLD = love.physics.newWorld()
local BODY = love.physics.newBody(WORLD, 0, 0, 'dynamic')
local SHAPE = love.physics.newRectangleShape(100, 50)
local FIXTURE = love.physics.newFixture(BODY, SHAPE, 1)
local JOINT = love.physics.newMouseJoint(BODY, 0, 0)
JOINT:setMaxForce(3000000)

local bodies, shapes, fixtures = {}, {}, {}

local RAND = love.math.newRandomGenerator()

local W, H = love.graphics.getDimensions()

for i = 1, 10 do
  local body = love.physics.newBody(WORLD, RAND:random(0, W), RAND:random(0, H))
  local shape = love.physics.newRectangleShape(RAND:random(10, 50), RAND:random(10, 50))
  local fixture = love.physics.newFixture(body, shape, 1)
  table.insert(bodies, body)
  table.insert(shapes, shape)
  table.insert(fixtures, fixture)
end

local X, Y = 0, 0

function love.update(dt)
  JOINT:setTarget(love.mouse.getPosition())
  WORLD:update(dt)
end

function love.draw()
  love.graphics.setColor(1, 0, 0)
  for i, fixture in ipairs(fixtures) do
    love.graphics.polygon('line', fixture:getBody():getWorldPoints(fixture:getShape():getPoints()))
  end
  love.graphics.setColor(0, 1, 0)
  love.graphics.polygon('fill', BODY:getWorldPoints(SHAPE:getPoints()))
end
