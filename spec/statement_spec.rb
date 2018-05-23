require 'statement'

describe Statement do
  let(:transaction_log) {double :transaction_log}
  it "stores the transactionlog" do
    allow(transaction_log).to receive(:transactions).and_return(50)
    subject = Statement.new(transaction_log)
    expect(subject.transactions).to eq 50
  end
end
