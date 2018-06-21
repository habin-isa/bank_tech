class Account

attr_reader :balance, :transaction

def initialize(transaction)
  @balance = 0
  @transaction = transaction
end

def display
  @balance
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

private

def credit(amount)
  @balance += (amount)
end

def debit(amount)
  @balance -= (amount)
end

def check_integer(amount)
  if amount.to_f != amount
      raise 'Please input an integer of a float'
  end
end
end
