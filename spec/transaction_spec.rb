require './lib/transaction.rb'

describe Transaction do
  subject(:transaction) { described_class.new }

  context 'transaction_list' do
    it 'Should initialize with an empty array called transaction_list' do
      expect(transaction.transaction_list).to eq([])
    end
  end

  context '#deposit' do
    it 'Should log the deposit with date and debit amount' do
      transaction.deposit("20-12-20", 200)
      expect(transaction.transaction_list).to include(["20-12-20", 200])
    end
  end

  context '#withdraw' do
    it 'Should log the withdrawal with date and credit amount' do
      transaction.withdraw("28-05-18", 100)
      expect(transaction.transaction_list).to include(["28-05-18", 100])
    end
  end

end
