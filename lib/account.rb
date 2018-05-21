class Account

  attr_reader :balance
  attr_reader :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def transaction(value, type, date)
    type == 'debit' ? @balance -= value : @balance += value
    @transactions << {date: date, type: type, value: value}
  end

end
