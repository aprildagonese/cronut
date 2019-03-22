class Item
  attr_accessor :batters, :toppings
  attr_reader :id, :type, :name, :ppu

  def initialize(data)
    @id = data["id"]
    @type = data["type"]
    @name = data["name"]
    @ppu = data["ppu"]
    @batters = data["batters"]
    @toppings = data["topping"]
  end
end
