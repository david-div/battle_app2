require 'player'

describe Player do

  context '#initialize' do
      it 'should give the players name' do
        player_1 = Player.new('David')
        expect(player_1.name).to eq 'David'
      end
  end
end
