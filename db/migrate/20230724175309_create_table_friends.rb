class CreateTableFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :full_name
      t.string :avatar
  end
end
end
