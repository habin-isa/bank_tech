require './lib/transaction.rb'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe 'transaction_list' do
    it 'Should initialize with an empty array called transaction_list' do
      expect(transaction.transaction_list).to eq([])
    end
  end
end
