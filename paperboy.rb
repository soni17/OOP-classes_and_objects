class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def earnings()
    return @earnings
  end

  def quota()

    if(@experience==0)
      @quota = 50
    else 
      @quota = 50 + (@experience/2)
    end    

  end

  def deliver(start_address , end_address)

    numHouses = (end_address - start_address) + 1

    @experience = @experience + numHouses
    
    if (@quota > numHouses)
      deliveryTotal = (numHouses * 0.25) - 2
      @earnings = @earnings + deliveryTotal
       return deliveryTotal
    else 
      deliveryTotal = (@quota * 0.25) + ( (numHouses - @quota) * 0.50 )
      @earnings = @earnings + deliveryTotal
      return deliveryTotal
    end

    quota()

  end
  

  def report()
    return "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end

end


puts tommy = Paperboy.new("Tommy")
puts tommy.deliver(101,160)
puts tommy.quota()
puts tommy.earnings()
puts tommy.report()
puts " "
puts tommy.quota()
puts tommy.deliver(1,75)
puts tommy.earnings()
puts tommy.report()
