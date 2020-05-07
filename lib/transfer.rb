class Transfer
  class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, status = "pending", balance)
    @name = name
    @balance = 1000
    @status = status
  end

  def deposit(money)
    @balance += money
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    @status == "open" && @balance > 0 ? true : false
  end

  def close_account
    @status = "closed"
  end
  def self.new(account, name, status, balance)
    account = Transfer.new(name,status,balance)
  end 
end
end
