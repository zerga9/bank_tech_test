
class Account
  attr_reader :balance


  def initialize
    @balance = 0
  end

  def deposit(value)
    @balance += value
  end

  def withdrawal(value)
    @balance -= value
  end

end
