#forzen_string_literal: true

#Account : withdraw and subtracts the ammount
class Account
  @account_counter = 0

  def self.next_number
    @account_counter += 1
  end

  def initialize(name, balance)
    @account_number = Account.next_number
    @name = name
    @balance = balance
  end

  def deposit(value)
    @balance += value
  end

  def withdraw(value)
    @balance -= value
  end

  def show
    puts "Account number: #{@account_number}"
    puts "Account holder name: #{@name}"
    puts "Account balance: #{@balance}"
  end
end
input = ["Rahul:2000", "Abhishek:3000", "transfer:200"]

custumer1 = input[0].split(':')
custumer2 = input[1].split(':')
transfer = input[2].split(':')

a = Account.new custumer1[0],custumer1[1].to_i
b = Account.new custumer2[0],custumer2[1].to_i
a.withdraw(transfer[1].to_i)
b.deposit(transfer[1].to_i)

a.show
b.show