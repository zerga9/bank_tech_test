require 'transaction_log'

describe TransactionLog do

  let(:account) { double :account}
  let(:transaction) { double :transaction}
  it 'stores the transactions' do
  allow(account).to receive(:balance).and_return(50)
  allow(transaction).to receive(:date,).and_return('12/11/2001')
  allow(transaction).to receive(:type,).and_return('credit')
  allow(transaction).to receive(:value,).and_return(50)
  subject.log_transactions(transaction, account)
  expect(subject.transactions).to include({:date => '12/11/2001', :type => 'credit', :value => 50.00, :balance => 50.00})
end
end
