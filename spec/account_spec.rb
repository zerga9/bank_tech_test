require 'account'

describe Account do

  let(:date){ double :date }

  it "should have a starting balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe '#deposit' do
    it "should add the deposit to your account balance " do
      expect{ subject.deposit(100, date) }.to change{ subject.balance }.by 100
    end
  end

  describe '#withdrawal' do
    it "should subtract amount from your account balance " do
      expect{ subject.withdrawal(50, date) }.to change{ subject.balance }.by(-50)
    end
  end

  it 'should give the date of a deposit' do
    subject.deposit(20, date)
    expect(subject.transactions[0]).to include date: date
  end

  it 'should give date of withdrawal' do
    subject.withdrawal(10, date)
    expect(subject.transactions[0]).to include date: date
  end

end
