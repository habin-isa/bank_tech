**Bank tech test**
Week 10 challenge @ Makers

**Specification:**
- Be able to interact with the code via a REPL like IRB
- User can make a deposit
- User can with make a withdrawal
- Display balance
- Print the account statement (date, amount, balance)
- Data can be kept in memory

**User stories:**

As a user so I can check how much money I have,
I want to be able to see my current balance

As a user so I can put money into my account,
I want to be able to make deposits that get added to my balance, and be shown my new balance

As a user so I can take money out,
I want to be able to withdraw money from my balance

As a user so I can check my account,
I want to be able to see my statement with dates, deposits and balances

![Alt text](https://github.com/habin-isa/bank_tech/blob/master/bank_model.jpg "Diagramming for class structure")

**Testing package instructions:**
(IRB shell testing in terminal)

- Run command line
- Gem install bundle
- 'run bundle'
- 'irb'
- 'require './lib/account.rb''
- 'require './lib/transaction.rb''
- 'require './lib/statement.rb''

i.e:

- a = Account.new(Transaction.new, Statement.new)
- a.deposit("12-06-18", 300)
- a.withdraw("13-06-18", 100)
- a.balance
- a.display_statement
