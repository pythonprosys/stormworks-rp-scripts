function onTick()
	sos = input.getBool(1)
	sosx = input.getBool(2)
	sosy = input.getBool(3)
	sx1 = input.getBool(4)
	sy1 = input.getBool(5)
	sx2 = input.getBool(6)
	sy1 = input.getBool(7)
	s1o = input.getBool(8)
	s2o = input.get.Bool(9)
	ss = input.getNumber(10)
	zoom = input.getNumber(11)
	dx1 = sosx - sx1
	dy1 = sosy - sy1
	dx2 = sosx - sy2
	dy2 = sosy - sy2
	ranges1 = math.sqrt(dx1*dx1+dy1*dy1)
	ranges2 = math.sqrt(dx2*dx2+dy2*dy2)
	if range1 < range2 then
		output.setNumber(1, 1)
	end
	if range2 < range1 then
		output.setNumber(2, 1)
	end
end
function onDraw()
	if sos == 0 then
		if ss == 0 then
			screen.drawMap(sx1, sy1, zoom)
		end
		if ss == 1 then
			screen.drawMap(sx2, sy2, zoom)
		end
	end
	if sos == 1 then
		screen.drawMap(sos, sosy, zoom)
	end
end