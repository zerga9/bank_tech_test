# bank_tech_test

IRB screenshot

![image](https://user-images.githubusercontent.com/33194929/40306204-b5f914aa-5cf5-11e8-9914-9e01034c7e33.png)

Rspec and test-coverage screenshot

![image](https://user-images.githubusercontent.com/33194929/40362489-912d5c1a-5dc4-11e8-9646-5a52619c901b.png)


Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
#### How it works

clone this reposition, run bundle install in your terminal and you can interact with the code via IRB.
In IRB ```require './lib/app.rb'```
type in ```account = Account.new``` and then you can make transactions with ```account.deposit(amount)```, make a transaction with ```transaction = Transaction.new(value, type, date )```
put it in the log like so ```log = TransactionLog.new``` and then ```log.log_transaction(transaction, account)```
Make a statement ```statement = Statement(log)``` and display it ```display = Display.new``` and ```display.print(statement)```
If you want to print the transactions just type ```account.print``` You'll see all the transactions, last one first.

#### Approach

My approach for this test was TDD. I first wrote a test, tried to pass it and when it passed, I tried to refactor the code written. Then I went on writing another test and so on, until I had all the requirements working. This Red/Green/Refactor cycle helped me get a good structure for this challenge.

#### Technical Specifications

I used Ruby for this challenge, Rspec for testing, Simplecov for the testcoverage and Rub0Cop as code analyzer
