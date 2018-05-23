class TransactionLog
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def log_transactions(transaction, account)
    transactions << {date: transaction.date, type: transaction.type, value: transaction.value, balance: account.balance }
  end
end
