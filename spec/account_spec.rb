require 'account'

describe Account do

  describe '#deposit' do
    it "adds value to the balance" do
      subject.deposit(500)
      expect(subject.balance).to eq 500
    end
  end

  describe '#withdrawal' do
    it "subtracts value from the balance" do
      subject.withdrawal(200)
      expect{ subject.withdrawal(200) }.to change{ subject.balance }.by(-200)
    end
  end


end
