# What functionality is needed:
# 	- Matchmaking
# 		- Matching two players of equal skill
# 		- Taking them out of player pool
# 		- Reinserting after match reported
# 	- Matchreporting
# 		- Character Usage?
# 		- Stage Usage?
# 		- Winner/Loser
# 		- Score
# 	- Setup Tracking
# 		- What Setups are free
# 		- Naming setups
# 		- Assigning matches to setups
# 		- Freeing setups after match report



class Ladder


	attr_reader :activePlayers, :inactivePlayers
	attr_reader :currentMatches, :completedMatches
	attr_reader :freeSetups, :usedSetups
	attr_reader :gameCount


	def initialize players, setups, gameCount

		@activePlayers		= players
		@inactivePlayers	= []
		@currentMatches 	= []
		@completedMatches 	= []
		@freeSetups 		= setups
		@usedSetups 		= []
		@ganeCount 			= gameCount

	end

	def startMatch player1. player2, setup

		# Take players out of active player pool

		# Take setup out of active setup pool

		# Add match to currentMatches list

	end

	def matchEnded match

		#Take match out of current matches

		#Add match to completed matches

		#Do elo calcs?

		#Add players back into active pool

		#Add setup back into active pool

	end

	def addSetup name, info, type

		newSetup = Setup.new(name, info, type)
		setupList.push newSetup

	end

	def addPlayer name

		newPlayer = Player.new(name)
		activePlayers.push newPlayer

	end

end

		
