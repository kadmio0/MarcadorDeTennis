require "./lib/TennisGame.rb"

describe TennisGame do
	before(:each) do
		@tennisGame = TennisGame.new()	
	end

	it "should be 0 - 0 if game is going 0 - 0 nobody makes 1 point" do
		expect(@tennisGame.getScore()).to eq("0 - 0")
    end

    it "should be 15 - 0 if game is going  0 - 0 and player 1 makes 1 point" do
    	@tennisGame.pointToPlayer(1)
    	expect(@tennisGame.getScore()).to eq("15 - 0")
    end


	it "should be 30 - 0 if game is going  0 - 0 and player 1 makes 2 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	expect(@tennisGame.getScore()).to eq("30 - 0")
    end

    it "should be 40 - 0 if game is going  0 - 0 and player 1 makes 3 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	expect(@tennisGame.getScore()).to eq("40 - 0")
    end

    it "should be Player 1 wins if game is going  0 - 0 and player 1 makes 4 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	expect(@tennisGame.getScore()).to eq("Player 1 wins")
    end

	it "should be 0 - 15 if game is going  0 - 0 and player 2 makes 1 point" do
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("0 - 15")
    end

	it "should be 0 - 30 if game is going  0 - 0 and player 2 makes 2 points" do
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("0 - 30")
    end

    it "should be 0 - 40 if game is going  0 - 0 and player 2 makes 3 points" do
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("0 - 40")
    end

 	it "should be Player 2 wins if game is going  0 - 0 and player 2 makes 4 points" do
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("Player 2 wins")
    end

    it "should be 15 - 15 if player 1 and 2 makes 1 point" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("15 - 15")
    end

    it "should be 30 - 15 if player 1 makes 2 points and player 2 makes 1 point" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("30 - 15")
    end

    it "should be 40 - 15 if player 1 makes 3 points and player 2 makes 1 point" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("40 - 15")
	end
    
    it "should be 15 - 30 if player 1 makes 1 point and player 2 makes 2 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("15 - 30")
    end

    it "should be 15 - 40 if player 1 makes 1 point and player 2 makes 3 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("15 - 40")
    end

    it "should be 30 - 30 if player 1 and 2 makes 2 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("30 - 30")
    end

    it "should be 40 - 30 if player 1 makes 3 points and player 2 makes 2 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("40 - 30")
    end

    it "should be 30 - 40 if player 1 makes 2 points and player 2 makes 3 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("30 - 40")
	end
    
    it "should be Deuce if player 1 makes 3 points and player 2 makes 3 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("Deuce")
    end

    it "should be advantage for player 1 if player 1 makes 4 points and player 2 makes 3 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(1)
    	expect(@tennisGame.getScore()).to eq("advantage for player 1")
    end    
    
    it "should be advantage for player 2 if player 1 makes 3 points and player 2 makes 4 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	expect(@tennisGame.getScore()).to eq("advantage for player 2")
    end  

	it "should be Deuce 2 if player 1 makes 4 points and player 2 makes 4 points" do
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(1)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(2)
    	@tennisGame.pointToPlayer(1)
    	expect(@tennisGame.getScore()).to eq("Deuce")
    end  

    it "should print a simulated game with player 1 with adventage and to the end wins" do
    	summary=""
    	@tennisGame.pointToPlayer(1)
    	summary=summary+@tennisGame.printScore()
    	@tennisGame.pointToPlayer(1)
    	summary=summary+@tennisGame.printScore()
    	@tennisGame.pointToPlayer(1)
    	summary=summary+@tennisGame.printScore()
    	@tennisGame.pointToPlayer(2)
    	summary=summary+@tennisGame.printScore()
    	@tennisGame.pointToPlayer(2)
    	summary=summary+@tennisGame.printScore()
    	@tennisGame.pointToPlayer(2)
    	summary=summary+@tennisGame.printScore()
    	@tennisGame.pointToPlayer(2)
    	summary=summary+@tennisGame.printScore()
    	@tennisGame.pointToPlayer(1)
    	summary=summary+@tennisGame.printScore()
    	@tennisGame.pointToPlayer(1)
		summary=summary+@tennisGame.printScore()
		@tennisGame.pointToPlayer(1)
    	summary=summary+@tennisGame.printScore()
    	expect(summary).to eq("15 - 0\n30 - 0\n40 - 0\n40 - 15\n40 - 30\nDeuce\nadvantage for player 2\nDeuce\nadvantage for player 1\nPlayer 1 wins\n")
    end  
end