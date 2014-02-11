class Game
 	
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