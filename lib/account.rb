require_relative 'statement'

class Account
  attr_reader :balance

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def transaction(value, type, date)
    type == 'debit' ? @balance -= value : @balance += value
    @statement.transactions << { date: date, type: type, value: value, balance: @balance }
  end

  def print
    @statement.print_statement
  end
end
