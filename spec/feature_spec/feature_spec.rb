require './lib/account.rb'

describe Account do
  subject(:account) { Account.new(Transaction.new) }
  let(:date) { double(:date) }

  it 'Initializes a new users balance as 0' do
    expect(account.balance).to eq(0)
  end
  it 'Allows a user to enter a deposit, with a date and amount' do
    account.deposit(:date, 200)
    expect(account.transaction.transaction_list).to include([:date, 200, 200])
  end
  it 'Allows a user to withdraw money, with a date and amount' do
    account.withdraw(:date, 500)
    expect(account.transaction.transaction_list).to include([:date, 500, -500])
  end
end
