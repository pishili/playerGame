require './players'
require './questions'

print "Player1 name: "
p1-name = gets.chomp
print "Player2 name: "
p2_name = gets.chomp

player1 = Players.new(p1_name)
player2 = Players.new(p2_name)

current_player = 1

while (player1.still_lives && player2.still_lives) do
	player = (current_player == 1) ? player1: player2
	question = Questions.new()

	puts "NEW TURN"

	puts "#{player.name}: #{question.print}"

	answer = gets.chomp.to_i



	if answer == question.answer
	puts "Yes you are correct!"
  puts "#{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
  else
    player.lives -= 1
    puts "Serously? No"
    puts "#{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
  end
  current_player = (current_player + 1) % 2
end

if player1.lives == 0
   puts " #{player2.name} wins with a score #{player2.lives}/3 lives"
elsif player2.lives == 0
   puts " #{player1.name} wins with a score #{player1.lives}/3 lives"
end

puts " GAME OVER "
