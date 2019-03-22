class Batter
  attr_accessor :id, :type

  def initialize(data)
    @id = data["id"]
    @type = data["type"]
  end
end
