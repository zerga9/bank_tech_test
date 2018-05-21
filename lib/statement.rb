class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def print_header
    puts "date || credit  || debit || balance "
  end

  def print_statement
    print_header
    @transactions.reverse.each do |transaction|
      if transaction[:type] == 'credit'
        puts "#{transaction[:date]} || #{transaction[:value]} ||  ||  #{transaction[:balance]}"
      else
        puts "#{transaction[:date]} ||  || #{transaction[:value]} ||  #{transaction[:balance]}"
      end
    end
  end

end
