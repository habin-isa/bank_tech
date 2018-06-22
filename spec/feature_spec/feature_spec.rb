require './lib/account.rb'

describe Account do
  subject(:account) { Account.new(Transaction.new, Statement.new) }
  let(:date) { double(:date) }

  it 'Initializes a new users balance as 0' do
    expect(account.balance).to eq(0)
  end
  it 'Allows a user to enter a deposit, with a date and amount' do
    account.deposit(:date, 200)
    expect(account.transaction.transaction_list).to include([:date, 200, "", 200])
  end
  it 'Allows a user to withdraw money, with a date and amount' do
    account.withdraw(:date, 500)
    expect(account.transaction.transaction_list).to include([:date, "", 500, -500])
  end

  context 'User pretty prints their statement' do
    let(:print) {
      "Date     || Credit || Debit || Balance\n" \
      "date || 1000 ||  || 1000\n" \
      "date || 2000 ||  || 3000\n" \
      "date ||  || 500 || 2500\n" \
      "date ||  || 100 || 2400\n"
    }

    it 'User deposits twice and withdraws twice, then sees their statement printed' do
      account.deposit(:date, 1000)
      account.deposit(:date, 2000)
      account.withdraw(:date, 500)
      account.withdraw(:date, 100)
      expect{ account.display_statement }.to output(print).to_stdout
    end
  end
end
