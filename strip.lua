args = {...}
args[1]=input
args[2]=TDir

--define functions and check for errors
if TDir == "Left" then
    function turn1()
        turtle.turnLeft()
    end
    function turn2()
        turtle.turnRight()
    end
elseif TDir == "Right" then
    function turn1()
        turtle.turnRight()
    end
    function turn2()
        turtle.turnLeft()
    end
else
    print("Error in arg 2! Direction must be 'Left' or 'Right'")
end

function checkinv()
  if turtle.getItemCount(16) > 32 do
    print("Inventory full! Dumping items!")
    while turtle.detectUp() == true do
      turtle.digUp()
    end
    turtle.select(1)
    turtle.placeUp()
    for i = 2,16 do
      turtle.select(i)
      turtle.dropUp()
    end
    turtle.select(1)
    turtle.digUp()
  end
end

function forward( n )
  for i=1,n do
    turtle.digUp()
    sleep(.5)
    while turtle.detectUp() == true do
      print("Turtle blocked! Digging!")
      turtle.digUp()
      sleep(.5)
    end
    turtle.turnLeft()
    turtle.dig()
    sleep(.5)
    while turtle.detect() == true do
      print("Turtle blocked! Digging!")
      turtle.dig()
      sleep(.5)
    end
    turtle.up()
    turtle.dig()
    sleep(.5)
    while turtle.detect() == true do
      print("Turtle blocked! Digging!")
      turtle.dig()
      sleep(.5)
    end
    turtle.turnRight()
    turtle.turnRight()
    turtle.dig()
    sleep(.5)
    while turtle.detect() == true do
      print("Turtle blocked! Digging!")
      turtle.dig()
      sleep(.5)
    end
    turtle.down()
    turtle.dig()
    sleep(.5)
    while turtle.detect() == true do
      print("Turtle blocked! Digging!")
      turtle.dig()
      sleep(.5)
    end
    turtle.turnLeft()
    turtle.dig()
    sleep(.5)
    while turtle.detect() == true do
      print("Turtle blocked! Digging!")
      turtle.dig()
      sleep(.5)
    end
    checkinv()
    turtle.forward()
  end
end


if input = "infinite" then
  while true do
    forward(64)
    turn1()
    forward(3)
    turn1()
    forward(64)
    turn2()
    forward(3)
    turn2()
  end
else
  print("input must be 'infinite' until other options are added!")
end