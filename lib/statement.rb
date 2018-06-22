# frozen_string_literal: true

class Statement
  def pretty_print(transaction_list)
    puts title
    transaction_list.each do |date, price, type, balance|
      puts "#{date} || #{price} || #{type} || #{balance}"
    end
  end

  private

  def title
    'Date     || Credit || Debit || Balance'
  end
end
