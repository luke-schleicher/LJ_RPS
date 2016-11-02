require "LJ_RPS/version"

module LJRPS
  class Game

    MOVES = { 'r' => 's', 's' => 'p', 'p' => 'r' }
    COMPUTER_MOVES = MOVES.keys

    def initialize()
      puts "Welcome to Rock, Paper, Scissors"
      set_up_players

    end

    def set_up_players
      @player_1 = Human.new
      print "How many players are playing today? ('1' or '2')"
      number_of_players = gets.chomp
      if number_of_players == 1
        @player_2 = Computer.new
      else
        @player_2 = Human.new
      end
    end

    def play
      loop do
        take_turn
      end
    end

    def take_turn
      print "Enter the first letter of your move: [r]ock, [p]aper, [s]cissors or type 'quit' \n >> "
      player_move = gets.chomp
      quit?(player_move)
      computer_move = COMPUTER_MOVES[rand(0..2)]
      puts "Computer move: #{computer_move}"
      winner = evaluate_winner(player_move,computer_move)
      results(winner)
    end

    def results(winner)
      puts "You win!" if winner == 1
      puts "Tie" if winner == 0
      puts "You lose" if winner == -1
      puts "Invalid move" if winner == -2
    end

    def quit?(player_move)
      exit if player_move == 'quit'
    end

    def evaluate_winner(move_1,move_2)
      return 1 if MOVES[move_1] == move_2
      return -1 if MOVES[move_2] == move_1
      return 0
    end

  end

  class Player
  end

  class Computer < Player
  end



  game = Game.new 
  game.play

end
