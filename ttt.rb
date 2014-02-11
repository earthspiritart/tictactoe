class Board
 	
 	def initialize
 	
 		@grid = [ ["x", "o", nil], [nil, nil, nil], [nil, nil, nil]]
 	
 	end

 	def show
 		puts " #{@grid[0][0]} | #{@grid[0][1]} | #{@grid[0][2]}"
		puts "_________________________________________________"
		puts " #{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]}"
		puts "_________________________________________________"
		puts " #{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]}"
	end

end

class Player
	attr_accessor :names

	def to_s
		"unkown player type"
	end
end

class Playerx < Player
	
	def to_s
		"x"
	end

end
class Playero < Player
	
	def to_s
		"o"
	end
end

class Game 
	def initialize
		@player1 = Playero.new
		@player2 = Playerx.new

		@board = Board.new

		@game_in_progress = true

		puts "Name for first player"
		player1 = gets.chomp

		puts "Name for second player"
		player2 = gets.chomp

		game_loop
	end
		def game_loop
			while @game_in_progress do

#ask current player for input
		puts "make a move 9[0-2].[0-2]0:"
		inputx = gets.chomp
		x = input.split(",")[0].to_i
		y = input.split(",")[1].to_i
		@board.insert(x,y, "x")
		@board.show
		#update the game based on the input
		#update the current player
		puts "make a move 9[0-2].[0-2]0:"
		inputy = gets.chomp
		x = input.split(",")[0].to_i
		y = input.split(",")[1].to_i
		@board.insert(x,y, "x")
		@board.show
		end
		
end