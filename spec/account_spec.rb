require 'account.rb'

describe Account do
subject(:account) { described_class.new(transaction) }
let(:transaction) { double(:transaction) }
let(:date) { double(:date) }

  context '#balance' do
    it 'Initializes as 0' do
      expect(account.balance).to eq(0)
    end
  end

  context '#deposit' do
    it 'Responds to the method' do
      expect(account).to respond_to(:deposit).with(2).argument
    end
  end

  context '#transaction' do
    it 'Equal to the transaction' do
      expect(transaction).to eq(transaction)
    end

    it 'Returns the balance, when #deposit is called on the transaction class' do
      allow(transaction).to receive(:deposit).and_return(500)
      account.deposit(:date, 200)
      expect(transaction).to have_received(:deposit).with(:date, 200)
    end
  end

end
