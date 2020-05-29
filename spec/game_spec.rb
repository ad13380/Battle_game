require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  let(:game) { Game.new(player_1, player_2) }
  describe '#initialize' do
    it "is expected to respond to #new with 2 arguments" do
      expect(described_class).to respond_to(:new).with(2).arguments
    end
  end

  describe '#attack' do
    it "reduces player's hit points by 10" do
      expect(player_2).to receive(:damaged)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it "returns the instance of player 1" do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it "returns the instance of player 2" do
      expect(game.player_2).to eq player_2
    end
  end
end