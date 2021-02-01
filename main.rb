require_relative 'player'
require_relative 'question'


puts "Welcome to Two-O-Player Math Game!"

P1 = Player.new('Player1')
puts "Change the name of first player:"
P1.name = gets.chomp

P2 = Player.new('Player2')
puts "Change the name of second player:"
P2.name = gets.chomp

puts "#{P1.name} vs #{P2.name}"

@turn = 0
begin
  if @turn % 2 == 0
    question = Questions.new
    puts "Player 1: #{question.prompt}"
    user_answer = $stdin.gets.chomp.to_i
    if user_answer == question.answer
      puts "YES! You are correct"
      puts "P1: #{P1.life}/3 vs #{P2.life}/3"
      @turn += 1
    else
      P1.incorrect
      puts "Player 1: Seriously? No!"
      puts "P1: #{P1.life}/3 vs #{P2.life}/3"
      @turn += 1
    end
  else
    question = Questions.new
    puts "Player 2: #{question.prompt}"
    user_answer = $stdin.gets.chomp.to_i
    if user_answer == question.answer
      puts "YES! You are correct"
      puts "P1: #{P1.life}/3 vs #{P2.life}/3"
      @turn += 1
    else
      P2.incorrect
      puts "Player 2: Seriously? No!"
      puts "P1: #{P1.life}/3 vs #{P2.life}/3"
      @turn += 1
    end
  end
end until P1.life == 0 || P2.life == 0
puts "-----GAME OVER-----"
if P1.life > 0
  puts "#{P1.name} wins with a score of #{P1.life}/3"
end
if P2.life > 0
  puts "#{P2.name} wins with a score of #{P2.life}/3"
end
puts "Good-Bye!"