class Player
  attr_reader :name, :hit_points

  STARTING_HP = 60

  def initialize(name, hit_points = STARTING_HP)
    @name = name
    @hit_points =  STARTING_HP
  end

  def damaged
    @hit_points -= 10
  end
end