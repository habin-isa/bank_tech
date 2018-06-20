require 'account.rb'

describe Account do
subject(:account) { described_class.new(transaction) }
let(:transaction) { double(:transaction) }

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
  end

end
