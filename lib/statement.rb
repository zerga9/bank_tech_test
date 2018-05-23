class Statement
  attr_reader :transactions

  HEADER =  ['date','credit', 'debit', 'balance']
  DELIMITER = ' || '

  def initialize(transaction_log)
    @transactions = transaction_log.transactions
  end

  def printer
    array = []
    array << HEADER.join(DELIMITER)
    array << @transactions.map { |tr| tr[:type] == 'credit' ? "#{tr[:date]} || || #{tr[:value]} ||  #{tr[:balance]} " : "#{tr[:date]} ||  #{tr[:value]} ||  ||  #{tr[:balance]} \n"}
  end

end
