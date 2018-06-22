# frozen_string_literal: true

class Account
  attr_reader :balance, :transaction, :statement

  def initialize(transaction, statement)
    @balance = 0
    @transaction = transaction
    @statement = statement
  end

  def deposit(date, amount)
    check_integer(amount)
    credit(amount)
    transaction.deposit(date, amount, balance)
  end

  def withdraw(date, amount)
    check_integer(amount)
    debit(amount)
    transaction.withdraw(date, amount, balance)
  end

  def display_statement
    statement.pretty_print(transaction.transaction_list)
  end

  private

  def credit(amount)
    @balance += amount
  end

  def debit(amount)
    @balance -= amount
  end

  def check_integer(amount)
    raise 'Please input an integer of a float' if amount.to_f != amount
  end
end
