class Score
	attr :result
	def calc(dice)
  	#asegurando que tirada tenga algun valor 
	  if dice.length == 0
	    return 0
	end

  one = 0
  two = 0
  three = 0
  four = 0
  five = 0
  six = 0
  @result = 0

  #mirando las tiradas

  dice.each do |value|
    if value == 1
      one += 1
    end
    if value == 2
      two += 1
    end
    if value == 3
      three += 1
    end
    if value == 4
      four += 1
    end
    if value == 5
      five += 1
    end
    if value == 6
      six += 1
    end
  end

  #generando resultado

  if one == 1
    @result += 100
  end
  if one == 2
    @result += 200
  end
  if one == 3
    @result += 1000
  end
  if one == 4
    @result += 1100
  end
  if one == 5
    @result += 1200
  end

  if two == 3
    @result += 200
  end

  if three == 3
    @result += 300
  end

  if four == 3
    @result += 400
  end

  if five == 1
    @result += 50
  end
  if five == 2
    @result += 100
  end
  if five == 3
    @result += 500
  end
  if five == 4
    @result += 550
  end
  if five == 5
    @result += 600
  end

  if six == 3
    @result += 600
  end
  # respuesta

  @result
end
end

p "Welcome to GREED game"
p "How many players"
numberplayers = gets.chomp


while (numberplayers.to_i >= 6) || (numberplayers.to_i <= 1) do
	p "I need a number between 2 and 5, please"
	numberplayers = gets.chomp
end

player1name = ""
while player1name == "" do
	p "Input player 1 name :"
	player1name = gets.chomp
end

player2name = ""
while player2name == "" do
	p "Input player 2 name :"
	player2name = gets.chomp
end

if numberplayers.to_i >= 3
	player3name = ""
	while player3name == "" do
		p "Input player 3 name :"
		player3name = gets.chomp
	end	
end

if numberplayers.to_i >= 4
	player4name = ""
	while player4name == "" do
		p "Input player 4 name :"
		player4name = gets.chomp
	end	
end

if numberplayers.to_i == 5
	player5name = ""
	while player5name == "" do
		p "Input player 5 name :"
		player5name = gets.chomp
	end	
end

bestscore = 0
score = []
score1 = Score.new
score2 = Score.new
score3 = Score.new
socre4 = Score.new
score5 = Score.new
score1total = 0
score2total = 0
score3total = 0
score4total = 0
score5total = 0

p "ROLL THE DICE"

while bestscore <= 3000 do
	p "Player 1 turn:"
	p "Input 1º roll from player 1"
	score[0] = gets.chomp
	p "Input 2º roll from player 1"
	score[1] = gets.chomp
	p "Input 3º roll from player 1"
	score[2] = gets.chomp
	p "Input 4º roll from player 1"
	score[3] = gets.chomp
	p "Input 5º roll from player 1"
	score[4] = gets.chomp
	score1total = score1total + score1.calc(score.map(&:to_i))
	p "Player 2 turn:"
	p "Input 1º roll from player 2"
	score[0] = gets.chomp
	p "Input 2º roll from player 2"
	score[1] = gets.chomp
	p "Input 3º roll from player 2"
	score[2] = gets.chomp
	p "Input 4º roll from player 2"
	score[3] = gets.chomp
	p "Input 5º roll from player 2"
	score[4] = gets.chomp
	score2total = score2total + score2.calc(score.map(&:to_i))
	if (numberplayers.to_i >= 3)
		p "Player 3 turn:"
		p "Input 1º roll from player 3"
		score[0] = gets.chomp
		p "Input 2º roll from player 3"
		score[1] = gets.chomp
		p "Input 3º roll from player 3"
		score[2] = gets.chomp
		p "Input 4º roll from player 3"
		score[3] = gets.chomp
		p "Input 5º roll from player 3"
		score[4] = gets.chomp
		score3total = score3total + score3.calc(score.map(&:to_i))
	end
	if (numberplayers.to_i >= 4)
		p "Player 4 turn:"
		p "Input 1º roll from player 4"
		score[0] = gets.chomp
		p "Input 2º roll from player 4"
		score[1] = gets.chomp
		p "Input 3º roll from player 4"
		score[2] = gets.chomp
		p "Input 4º roll from player 4"
		score[3] = gets.chomp
		p "Input 5º roll from player 4"
		score[4] = gets.chomp
		score4total = score4total + score4.calc(score.map(&:to_i))
	end
	if (numberplayers.to_i == 5)
		p "Player 5 turn:"
		p "Input 1º roll from player 5"
		score[0] = gets.chomp
		p "Input 2º roll from player 5"
		score[1] = gets.chomp
		p "Input 3º roll from player 5"
		score[2] = gets.chomp
		p "Input 4º roll from player 5"
		score[3] = gets.chomp
		p "Input 5º roll from player 5"
		score[4] = gets.chomp
		score5total = score5total + score5.calc(score.map(&:to_i))
	end
	bestscore = [score1total, score2total, score3total, score4total, score5total].max
	if bestscore >= 3000
		if bestscore != score1total
				p "Player 1 turn:"
				p "Input 1º roll from player 1"
				score[0] = gets.chomp
				p "Input 2º roll from player 1"
				score[1] = gets.chomp
				p "Input 3º roll from player 1"
				score[2] = gets.chomp
				p "Input 4º roll from player 1"
				score[3] = gets.chomp
				p "Input 5º roll from player 1"
				score[4] = gets.chomp
				score1total = score1total + score1.calc(score.map(&:to_i))
		end
		if bestscore != score2total
			p "Player 2 turn:"
			p "Input 1º roll from player 2"
			score[0] = gets.chomp
			p "Input 2º roll from player 2"
			score[1] = gets.chomp
			p "Input 3º roll from player 2"
			score[2] = gets.chomp
			p "Input 4º roll from player 2"
			score[3] = gets.chomp
			p "Input 5º roll from player 2"
			score[4] = gets.chomp
			score2total = score2total + score2.calc(score.map(&:to_i))
		end
		if (numberplayers.to_i >= 3)
			if bestscore != score3total
				p "Player 3 turn:"
				p "Input 1º roll from player 3"
				score[0] = gets.chomp
				p "Input 2º roll from player 3"
				score[1] = gets.chomp
				p "Input 3º roll from player 3"
				score[2] = gets.chomp
				p "Input 4º roll from player 3"
				score[3] = gets.chomp
				p "Input 5º roll from player 3"
				score[4] = gets.chomp
				score3total = score3total + score3.calc(score.map(&:to_i))
			end
		end
		if (numberplayers.to_i >= 4)
			if bestscore != score3total
				p "Player 4 turn:"
				p "Input 1º roll from player 4"
				score[0] = gets.chomp
				p "Input 2º roll from player 4"
				score[1] = gets.chomp
				p "Input 3º roll from player 4"
				score[2] = gets.chomp
				p "Input 4º roll from player 4"
				score[3] = gets.chomp
				p "Input 5º roll from player 4"
				score[4] = gets.chomp
				score4total = score4total + score4.calc(score.map(&:to_i))
			end
		end
		if (numberplayers.to_i == 5)
			if bestscore != score3total
				p "Player 5 turn:"
				p "Input 1º roll from player 5"
				score[0] = gets.chomp
				p "Input 2º roll from player 5"
				score[1] = gets.chomp
				p "Input 3º roll from player 5"
				score[2] = gets.chomp
				p "Input 4º roll from player 5"
				score[3] = gets.chomp
				p "Input 5º roll from player 5"
				score[4] = gets.chomp
				score5total = score5total + score5.calc(score.map(&:to_i))
			end
		end
		bestscore = [score1total, score2total, score3total, score4total, score5total].max
	end
	p "SCORES:"
	p "Player 1: #{score1total}"
	p "Player 2: #{score2total}"
	if (numberplayers.to_i >= 3)
		p "Player 3: #{score3total}"
	end
	if (numberplayers.to_i >= 4)
		p "Player 4: #{score4total}"
	end
	if (numberplayers.to_i >= 5)
		p "Player 5: #{score5total}"
	end
	if bestscore >= 3000
		if bestscore == score1total
			p "Player 1 Wins!!!!"
		end
		if bestscore == score2total
			p "Player 2 Wins!!!!"
		end
		if bestscore == score3total
			p "Player 3 Wins!!!!"
		end
		if bestscore == score4total
			p "Player 4 Wins!!!!"
		end
		if bestscore == score5total
			p "Player 5 Wins!!!!"
		end
	end
end