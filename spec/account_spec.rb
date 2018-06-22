# frozen_string_literal: true

require 'account.rb'

# rubocop:disable LineLength

describe Account do
  subject(:account) { described_class.new(transaction, statement) }
  let(:transaction) { double(:transaction) }
  let(:date) { double(:date) }
  let(:statement) { double(:statement) }

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
        expect(transaction).to have_received(:deposit).with(:date, 200, 200)
      end
      it 'Returns updated balance once deposit has been called' do
        expect(account.balance).to eq(200)
      end
      it 'Should raise an error if input type is not an integer' do
        expect { account.deposit(:date, 'Yes') }.to raise_error('Please input an integer of a float')
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
    it 'Responds to the method' do
      expect(account).to respond_to(:withdraw).with(2).argument
    end
    it 'Calls the method on the transaction class' do
      expect(transaction).to have_received(:withdraw).with(:date, 100, 100)
    end
    it 'Returns updated balance once withdraw has been called' do
      expect(account.balance).to eq(100)
    end
    it 'Should raise an error if input type is not an integer' do
      expect { account.withdraw(:date, 'Yes') }.to raise_error('Please input an integer of a float')
    end
  end

  describe '#transaction' do
    it 'Equal to the transaction' do
      expect(transaction).to eq(transaction)
    end
  end

  describe '#statement' do
    it 'Should be the statement' do
      expect(account.statement).to eq(statement)
    end
  end

  describe '#display_statement' do
    it 'Calls pretty_print on the statement object' do
      allow(statement).to receive(:pretty_print)
      allow(transaction).to receive(:transaction_list)
      account.display_statement
      expect(statement).to have_received(:pretty_print)
    end
  end
end

# rubocop:enable LineLength
