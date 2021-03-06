class Board
 	def initialize
 	
 		@grid = [ [nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
 	
 	end

 	def show
 		puts " #{@grid[0][0]} | #{@grid[0][1]} | #{@grid[0][2]}"
		puts "_________________________________________________"
		puts " #{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]}"
		puts "_________________________________________________"
		puts " #{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]}"
	end
	
	def get(a,b)
		return @grid[a][b]
	end

	def insert(x,y,value)
		@grid[x][y] = value
	end
end

class Player
	attr_accessor :names

	def to_s
		"unkown player type"
	end
end

class PlayerX < Player
	
	def to_s
		"x"
	end

end

class PlayerO < Player
	
	def to_s
		"o"
	end
end

class Game 
	def initialize
		@player1 = PlayerO.new
		@player2 = PlayerX.new

		@board = Board.new

		@game_in_progress = true

		puts "Name for first player"
		@player1 = gets.chomp

		puts "Name for second player"
		@player2 = gets.chomp

		game_loop
	end

	


	def game_loop
		while @game_in_progress do			
			puts "#{@player1} make a move by entering x,y"
			inputx = gets.chomp
			x = inputx.split(",")[0].to_i
			y = inputx.split(",")[1].to_i 
			while x > 2 || y > 2 || x.class != Fixnum || y.class != Fixnum do
				puts "#{@player1} make a move by entering x,y"
				inputx = gets.chomp
				x = inputx.split(",")[0].to_i
				y = inputx.split(",")[1].to_i 
			end
			@board.insert(x,y, "X")
			@board.show
			
			x = @board.get(x,y)
			puts x
			puts x == "X"
			if @board.get(0,0) == "X" && @board.get(0,1) == "X" && @board.get(0,2) == "X"
				puts "X wins"
			end

			####################
			puts "#{@player2} make a move by entering x,y"
			inputy = gets.chomp
			x = inputy.split(",")[0].to_i
			y = inputy.split(",")[1].to_i 
			while x > 2 || y > 2 || x.class != Fixnum || y.class != Fixnum do
				puts "#{@player2} make a move by entering x,y"
				inputy = gets.chomp
				x = inputy.split(",")[0].to_i
				y = inputy.split(",")[1].to_i 
			end
			@board.insert(x,y, "O")



			@board.show
		end
	end
		
end