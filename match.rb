class Match


	attr_reader :player1, :player2, :gameCount, :eloShift
	attr_accessor :player1Score, :player2Score, :winner, :loser


	def initialize player1, player2, gameCount

		@player1 		= player1
		@player2 		= player2
		@gameCount 		= gameCount
		@eloShift		= nil
		@player1Score 	= 0
		@player2Score 	= 0
		@winner 		= nil
		@loser 			= nil

	end


	def reportMatch player1Score, player2Score, winner, loser

		@player1Score 	= player1Score
		@player2Score 	= player2Score
		@winner		 	= winner
		@loser 			= loser


		eloChange = calculate_elo_change(winner.elo, loser.elo)
		winner.new_elo eloChange
		loser.new_elo eloChange
		@eloShift = eloChange

	end

	def self.calculate_elo_change(winnerElo, loserElo)
		#Rn = Ro + C * (S - Se)
		expectedScore = 1.0/(1+10**((loser.elo-winner.elo)/400.0))
		newRating = ELO_CONST * 1 * (1-expectedScore)
		#puts newRating
		return newRating.floor
	end

end
