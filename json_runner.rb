require './lib/item'
require './lib/batter'
require './lib/topping'
require 'pry'

def read_file
  @response = File.read('data/cronut.json')
  @data = JSON.parse(@response)
  create_items
end

def create_items
  @data["items"]["item"].each do |item|
    a = Item.new(item)
  end
  create_batters
end

def create_batters
  items = ObjectSpace.each_object(Item).to_a
  items.each do |item|
    item.batters = item.batters["batter"].map do |batter|
      Batter.new(batter)
    end
  end
  create_toppings
end

def create_toppings
  items = ObjectSpace.each_object(Item).to_a
  items.each do |item|
    item.toppings = item.toppings.map do |topping|
      Topping.new(topping)
    end
  end
end

read_file
