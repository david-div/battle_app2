class Player

  attr_reader :name, :health_points

  DEFAULT_HP = 100

  def initialize(name, health_points = DEFAULT_HP)
    @name = name
    @health_points = health_points
  end

  def reduce_hp
    @health_points -= 10
  end

  def attack(player)
    player.reduce_hp
  end


  end
