require 'account'

describe Account do

  it "should have a starting balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe '#deposit' do
    it "should add the deposit to your account balance " do
      expect{subject.deposit(100)}.to change{subject.balance}.by 100
    end
  end

end
