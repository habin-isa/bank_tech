class Transaction

attr_reader :transaction_list

def initialize
  @transaction_list = []
end

def deposit(date, amount)
  debit = date, amount
  transaction_list.push(debit)
end

def withdraw(date, amount)
  debit = date, amount
  transaction_list.push(debit)
end
end
