u1 = User.create(name: "william", username: "william", password: "william")
u2 = User.create(name: "james123", username: "james123", password: "james123")
u3 = User.create(name: "password", username: "password", password: "password")

i1 = Item.create(user_id: 1, name: "car", description: "a car")
i2 = Item.create(user_id: 2, name: "phone", description: "a phone")
i3 = Item.create(user_id: 1, name: "boat", description: "a boat")
i4 = Item.create(user_id: 3, name: "chair", description: "a chair")

w1 = WishlistItem.create(user_id: 1, name: "money", description: "cash")

l1 = Loan.create(user_id:1, item_id: 2, duedate: DateTime.now + 1.week)
l2 = Loan.create(user_id:2, item_id: 1, duedate: DateTime.now + 2.week)

puts "Done seeding"