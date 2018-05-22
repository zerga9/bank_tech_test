class TransactionLog
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def log_transactions(transaction, account)
    transactions << {transaction: transaction, balance: account.balance }
  end
end
