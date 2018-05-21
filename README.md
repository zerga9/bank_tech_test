# bank_tech_test

IRB screenshot

![image](https://user-images.githubusercontent.com/33194929/40306204-b5f914aa-5cf5-11e8-9914-9e01034c7e33.png)

Rspec and test-coverage screenshot

![image](https://user-images.githubusercontent.com/33194929/40307198-6af6a3ce-5cf9-11e8-9c8b-60eee5e09a22.png)


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
#### How it works;

clone this reposition, run bundle install in your terminal and you can interact with the code via IRB
In IRB require './lib/account.rb'
type in account = Account.new and then you can make transactions with account.transaction(amount, type, date)
If you want to print the transactions just type account.print in your IRB and you'll get a table with all your transactions, last one first.

#### Approach;

I first wrote the tests and then wrote the required code for the tests. Then I refactored until the code looked clean and went on writing another test until I had all the requirements working
