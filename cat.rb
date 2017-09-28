require 'pp'

class Cat

  def initialize(name,preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at()

    if (@meal_time > 12)
      return "#{@meal_time - 12}PM"
    else
      return "#{@meal_time}AM"
    end

  end

  def meow()
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end


end


tina = Cat.new("Tina" , "Broccoli" , 6)
georgie = Cat.new("Georgie" , "Chicken" , 21)

pp tina
pp georgie

puts " "
puts tina.eats_at()
puts georgie.eats_at()
puts " "

puts tina.meow()
puts georgie.meow()
