require 'transaction_log'

describe TransactionLog do

  let(:account) { double :account}
  let(:transaction) { double :transaction}
  it 'stores the transactions' do
  allow(account).to receive(:balance).and_return(50)
  subject.log_transactions(transaction, account)
  expect(subject.transactions).to include({:transaction => transaction, :balance => 50})
end
end
