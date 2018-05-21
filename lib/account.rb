class Account

  attr_reader :balance
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(value, date)
    @balance += value
    @transactions << {date: date, value: value}
  end

  def withdrawal(value, date)
    @balance -= value
  end
end
