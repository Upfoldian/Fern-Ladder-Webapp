class Match


	attr_reader :player1, :player2, :gameCount
	attr_accessor :player1Score, :player2Score, :winner


	def initialize player1, player2, gameCount

		@player1 		= player1
		@player2 		= player2
		@gameCount 		= gameCount
		@player1Score 	= 0
		@player2Score 	= 0
		@winner 		= nil

	end


	def reportMatch player1Score, player2Score, winner

		@player1Score 	= player1Score
		@player2Score 	= player2Score
		@winner		 	= winner

	end

end
