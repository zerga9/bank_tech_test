require 'account'

describe Account do

  let(:date){ double :date }

  it "should have a starting balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe '#transaction' do
    it "should add the deposit to your account balance " do
      expect{ subject.transaction(100, 'credit', date) }.to change{ subject.balance }.by 100
    end

    it "should subtract amount from your account balance " do
      expect{ subject.transaction(50, 'debit', date) }.to change{ subject.balance }.by(-50)
    end
  end

  it 'should give the date of a transaction' do
    subject.transaction(20, 'credit', date)
    expect(subject.transactions[0]).to include date: date
  end

end
