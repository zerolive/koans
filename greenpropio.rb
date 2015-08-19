class GameGreed
	attr :points
	attr :score
	def puntos
		i = 5
		@points = []
		while i > 0 do
			i = i -1
			@points << 1+ rand(6)
		end
	end

	def marca
		@score = 0
		i = 5
		while i > 0 do
			i = i -1
			@score = @score + @points[i]
		end
	end
end

player1 = GameGreed.new
player1.puntos
player1.marca

p "Points : #{player1.points} Score: #{player1.score}"