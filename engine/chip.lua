counter1 = 0
summe1 = 0
counter2 = 0
summe2 = 0
function onTick()
	ok = input.getNumber(1)
	speed = input.getNumber(2)
	temp = input.getNumber(3)
	rps = input.getNumber(4)
	if ok == 1 then
		output.setNumber(1, 190)
		counter1 = counter1 + 1
		summe1 = summe1 + speed
		counter2 = counter2 + 1
		summe2 = summe2 + temp
		if rps > 180 then
			output.setNumber(1, 0)
		end
	end
	if ok == 0 then
		output.setNumber(1, 0)
	end
	dspeedplus = counter1 / summe1
	dtempplus = counter2 / summe2
	output.setNumber(2, dspeedplus)
	output.setNumber(3, dtempplus)
end
