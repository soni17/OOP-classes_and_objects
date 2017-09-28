class BankAccount

  def initialize()
    @balance = 0
    @interest_rate = 1.02
  end

  # Getter for balance
  def balance
    return @balance
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def gain_interest()
    @balance = @balance * @interest_rate
  end

end


account57 = BankAccount.new()

account57.deposit(12)
puts account57.balance

account57.deposit(10)
puts account57.balance

account57.withdraw(5)
puts account57.balance

account57.withdraw(3)
puts account57.balance

account57.gain_interest()
puts account57.balance
