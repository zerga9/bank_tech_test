require 'transaction'

describe Transaction do
  subject = Transaction.new(500, 'credit', '15/03/1999')

  it 'stores a value' do
    expect(subject.value).to eq 500
  end

  it 'stores the type of transaction' do
    expect(subject.type).to eq 'credit'
  end

  it 'stores the date' do
    expect(subject.date).to eq '15/03/1999'
  end


end
