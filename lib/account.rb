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
  credit(amount)
  transaction.deposit(date, amount)
end

def withdraw(date, amount)
  transaction.withdraw(date, amount)
end

private

def credit(amount)
  @balance += (amount)
end
end
