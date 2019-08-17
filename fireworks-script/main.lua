i = 0 -- this is before any functions

function onTick()
  ok = input.getNumber(1)
  if ok == 1 then
    if i == 70 then
      output.setNumber(1, 1) 
    if i == 90 then
      output.setNumber(2, 1) 
    end
    if i == 130 then
      output.setNumber(3, 1)
    end
    if i == 200 then
      output.setNumber(4, 1)
    end
    if i == 250 then
      output.setNumber(5, 1)
    end
    i = i + 1
  end
end
