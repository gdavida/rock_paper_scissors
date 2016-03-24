

#if their choices are the same, its a tie!
if player_1_choice == player_2_choice
	return "TIE!"
#if player one chooses rock,
#first check scenario where player 1 would win,
#or else we can assume player 2 would win.
elsif player_1_choice == "rock"
	if player_2_choice == "scissors"
		return "PLAYER 1 WINS!"
	else
		return "PLAYER 2 WINS"
	end
#if player one chooses paper,
#first check scenario where player 1 would win,
#or else we can assume player 2 would win.
elsif player_1_choice == "paper"
	if player_2_choice == "rock"
		return "PLAYER 1 WINS!"
	else
		return "PLAYER 2 WINS"
	end