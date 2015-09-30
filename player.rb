# What a player needs:
# 	- Name
# 	- Elo? (public or hidden)
# 	- Twitter/Smashboards/Whatever Alias?
#  
# 
# 
# 
# 
# 
# 
# 


class Player

	attr_reader :name, :elo, :matchHistory, :eloChanges

	def initialize player

		@name 			= player
		@elo 			= 1200
		@matchHistory 	= []
		@eloChanges 	= [1200]

	end

	def beat player

		@matchHistory.push {:opponent => player, :outcome => :won}

	end

	def lost_to player

		@matchHistory.push {:opponent => player, :outcome => :lost}

	end

	def new_elo newElo

		@elo += newElo
		@eloChanges.push @elo
		
	end

	def wins
		@matchHistory.select{|result| result[:outcome] == :won}
	end

	def losses
		@matchHistory.select{|result| result[:outcome] == :lost}
	end

	def to_s
		"#{@name}, #{@elo}"
	end

end