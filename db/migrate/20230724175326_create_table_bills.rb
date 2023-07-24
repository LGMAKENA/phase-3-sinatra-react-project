class CreateTableBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t| 
      t.datetime :bill_date
      t.integer :friend_id
      t.float :bill_amount
      t.float :amount_paid
      t.string :comment
      t.float :who_paid
      t.float :balance
    end 
  end
  
end
