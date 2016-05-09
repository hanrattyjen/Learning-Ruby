class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    
    private
    
    def pin
        @pin = 1234  
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
    
    public
    
    def display_balance(pin_number)
        if pin_number == @pin
            puts "Balance: #{@balance}"
        else
            puts pin_error
        end
    end
    
    def withdraw(pin_number, amount)
        if amount < @balance
            if pin_number == @pin
                @balance -= amount
                puts "Withdrew #{amount}."
                puts "New balance $#{balance}."
            else
                pin_error
            end
        else
            puts "Sorry, you do not have that amount available to withdraw."
        end
    end
    
    def deposit(pin_number, amount)
        if pin_number == @pin
            @balace += amount
            puts "Deposited #{amount}."
            puts "New balance $#{balance}."
        else
            pin_error
        end
    end
end

checking_account = Account.new("Jen", 50)
checking_account.deposit(1234, 40)
# checking_account.withdraw(1234, 20)
# balance = checking_account.display_balance(1234)
# puts balance

        