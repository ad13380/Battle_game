require 'player'

describe Player do
  let(:player) { described_class.new('Anthony') }
  let(:player_2) { described_class.new("Steve") }

  describe '#name' do
    it "returns player's name" do
      expect(player.name).to eq 'Anthony'
    end
  end

  describe '#hit_point' do
    it "returns player's hit points" do
      expect(player.hit_points).to eq Player::STARTING_HP
    end
  end

  describe '#damaged' do
    it "reduces player's hit points by 10" do   
      expect{ player.damaged }.to change { player.hit_points }.by(-10)
    end
  end
end