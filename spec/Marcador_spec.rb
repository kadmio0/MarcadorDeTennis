require "./lib/TennisGame.rb"

describe TennisGame do

    it "should be 0 - 0 if game is going 0 - 0 nobody makes 1 point" do
        @tennisGame = TennisGame.new()	
		expect(@tennisGame.getScore()).to eq("0 - 0")
    end
end