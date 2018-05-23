require './lib/account.rb'
require './lib/statement.rb'
require './lib/transaction.rb'
require './lib/transaction_log.rb'
require './lib/display.rb'

account = Account.new
account.deposit(100)
transaction =  Transaction.new(100, 'credit', '25/11/2004')
log = TransactionLog.new
log.log_transactions(transaction, account)
account.withdrawal(50)
transaction2 = Transaction.new(50, 'debit', '26/11/2004')
log.log_transactions(transaction2, account)
statement = Statement.new(log)
display = Display.new
display.print(statement)
