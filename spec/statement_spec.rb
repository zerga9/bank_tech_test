require 'statement'

describe Statement do
  it 'should print out all the transactions, last one first' do
    transactions = [{ date: '16/04/2018', type: 'debit', value: 300, balance: 200 },
                    { date: '15/04/2018', type: 'credit', value: 500, balance: 500 }]
    statement = Statement.new(transactions)
    expect(statement.print_statement).to eq transactions.reverse
  end
end
