puts "🌱 Seeding data..."

Friend.create(full_name: 'Erick Mongare',avatar: 'https://i.pravatar.cc/48?u=933372')
Friend.create(full_name: 'RhonaJoy Koome',avatar: 'https://i.pravatar.cc/48?u=499476')


Bill.create(bill_date: '2023-07-22',friend_id: 1,bill_amount: 2000,amount_paid: 1000,who_paid: 1,balance: 1000, comment: 'Some comment')
Bill.create(bill_date: '2023-07-15',friend_id: 2,bill_amount: 5000,amount_paid: 3000,who_paid: 2, balance: -2000, comment: 'Lovely evening')
Bill.create(bill_date: '2023-07-22',friend_id: 1,bill_amount: 3000,amount_paid: 3000,who_paid: 1,balance: 0, comment: 'Fully paid')
Bill.create(bill_date: '2023-07-15',friend_id: 2,bill_amount: 3500,amount_paid: 3500,who_paid: 2, balance: 0, comment: 'This was nice')

puts "🌱 Done seeding!"
