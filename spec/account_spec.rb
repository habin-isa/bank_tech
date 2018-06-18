require 'account.rb'

describe Account do
  it "#display, balance initializes as 0" do
    expect(subject.display).to eq 0
  end
  it "#top_up, balance displays as 60" do
    subject.top_up(60)
    expect(subject.display).to eq 60
  end
  it "#withdraw 20, new balance is 40" do
    subject.top_up(60)
    subject.withdraw(20)
    expect(subject.display).to eq 40
  end

end
