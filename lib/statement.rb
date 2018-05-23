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
    array << @transactions.reverse.map { |tr| tr[:type] == 'credit' ? "#{tr[:date]} || || #{'%.2f' % tr[:value]} ||  #{'%.2f' % tr[:balance]} " : "#{tr[:date]} ||  #{'%.2f' % tr[:value]} ||  ||  #{'%.2f' % tr[:balance]} \n"}
  end

end
