class Friend < ActiveRecord::Base
    has_many :bills

    

    def self.friend_balances_with_avatars
        all.map do |friend|
          {
            id: friend.id,
            full_name: friend.full_name,
            balance: friend.balance,
            avatar: friend.avatar 
                    }
        end
      end
    
      def balance
        bills_balance = bills.sum do |bill|
          bill.who_paid == 1 ? (bill.bill_amount - bill.amount_paid) : (bill.amount_paid - bill.bill_amount)
        end
        bills_balance
      end
end