require 'account.rb'

describe Account do
subject(:account) { described_class.new(transaction) }
let(:transaction) { double(:transaction) }
let(:date) { double(:date, :deposit) }

  describe '#balance' do
    it 'Initializes as 0' do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    before do
      allow(transaction).to receive(:deposit)
      account.deposit(:date, 200)
    end
  context 'User makes a deposit' do
    it 'Responds to the method' do
      expect(account).to respond_to(:deposit).with(2).argument
    end
    it 'Calls the method on transaction' do
      expect(transaction).to have_received(:deposit).with(:date, 200)
    end
    it 'Returns updated balance once deposit has been called' do
      expect(account.balance).to eq(200)
    end
  end
end

  describe '#withdraw' do
    before do
      allow(transaction).to receive(:deposit)
      allow(transaction).to receive(:withdraw)
      account.deposit(:date, 200)
      account.withdraw(:date, 100)
    end
    it "Responds to the method" do
      expect(account).to respond_to(:withdraw).with(2).argument
    end
    it 'Calls #withdraw on the transaction class' do
      expect(account.balance).to eq(100)
    end
    it 'Returns updated balance once withdraw has been called' do
      expect(account.balance).to eq(100)
    end
  end

  describe '#transaction' do
    it 'Equal to the transaction' do
      expect(transaction).to eq(transaction)
    end
  end

end
