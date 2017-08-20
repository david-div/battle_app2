require 'player'

describe Player do
  subject(:david) { Player.new("David") }
    subject(:freddie) { Player.new("Freddie") }
  context '#initialize' do
      it 'should give the players name' do
        player_1 = Player.new('David')
        expect(player_1.name).to eq 'David'
      end

      it 'should give the players name' do
        expect(david.health_points).to eq described_class::DEFAULT_HP
      end

      it "reduces the players hit points" do
        expect { david.reduce_hp }.to change { david.health_points }.by(-10)
      end
  end



end
