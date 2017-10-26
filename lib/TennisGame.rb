class TennisGame
	def initialize()
        @scorePlayer1=0
        @scorePlayer2=0
    end
        
    def getScore()

        if winsPlayer1() || playerOneWinsAdvantage()
            return "Player 1 wins"
        elsif winsPlayer2() || playerTwoWinsAdvantage()
            return "Player 2 wins"	
        elsif playersWithThreePoints()
            return "Deuce"
        elsif isPlayerOneWithAdvantage()
            return "advantage for player 1"
        elsif isPlayerTwoWithAdvantage()
            return "advantage for player 2"
        elsif returnToDeuce()
            return "Deuce"
        end
        return @scorePlayer1.to_s+" - "+@scorePlayer2.to_s
    end

    def pointToPlayer(player)
        if (player==1)
                if(@scorePlayer1==30)
                    @scorePlayer1+=10
                else
                    @scorePlayer1+=15
                end
        elsif (player==2)
                if(@scorePlayer2==30)
                    @scorePlayer2+=10
                else
                    @scorePlayer2+=15
                end
        end
    end

    def printScore()
        puts getScore()
        return getScore()+"\n"
    end

    def winsPlayer1
        return  @scorePlayer1>40 && @scorePlayer2<40
    end

    def winsPlayer2
        return  @scorePlayer2>40 && @scorePlayer1<40
    end

    def playersWithThreePoints
        return @scorePlayer1==40 && @scorePlayer2==40
    end

    def isPlayerOneWithAdvantage
        return @scorePlayer1==55 && @scorePlayer2==40
    end

    def isPlayerTwoWithAdvantage
        return @scorePlayer1==40 && @scorePlayer2==55
    end

    def playerOneWinsAdvantage
        return @scorePlayer1==70 && @scorePlayer2==40
    end

    def playerTwoWinsAdvantage
        return @scorePlayer2==70 && @scorePlayer1==40
    end

    def returnToDeuce
        if @scorePlayer1==55 && @scorePlayer2==55
            @scorePlayer1=40
            @scorePlayer2=40
            return true
        end
        return false
    end
end