require 'account'

describe Account do
  describe '#transaction' do
    it 'should add the deposit to your account balance ' do
      expect { subject.transaction(100, 'credit', '15/02/2015') }
        .to change { subject.balance }.by 100
    end

    it 'should subtract amount from your account balance ' do
      expect { subject.transaction(50, 'debit', '13/03/2014') }
        .to change { subject.balance }.by(-50)
    end
  end

  it 'should give the date of a transaction' do
    subject.transaction(20, 'credit', '21/05/2018')
    expect(subject.transactions[0]).to include date: '21/05/2018'
  end

  it 'should store all the transactions' do
    subject.transaction(500, 'credit', '15/04/2017')
    subject.transaction(300, 'debit', '16/04/2017')
    expect(subject.transactions).to include({ date: '16/04/2017', type: 'debit', value: 300, balance: 200 },
                                            date: '15/04/2017', type: 'credit', value: 500, balance: 500)
  end

  it 'should let the customer see all their transactions, last one first' do
    subject.transaction(500, 'credit', '15/04/2018')
    subject.transaction(300, 'debit', '16/04/2018')
    expect(subject.print).to eq([{ date: '16/04/2018', type: 'debit', value: 300, balance: 200 },
                                 { date: '15/04/2018', type: 'credit', value: 500, balance: 500 }])
  end
end
