u1 = User.create(name: "William", username: "william", password: "william")
u2 = User.create(name: "James", username: "james123", password: "james123")
u3 = User.create(name: "Charles", username: "charles", password: "charles")

i1 = Item.create(user_id: 1, name: "Car", description: "a car", image: "https://www.extremetech.com/wp-content/uploads/2019/12/SONATA-hero-option1-764A5360-edit.jpg" )
i2 = Item.create(user_id: 2, name: "Phone", description: "a phone", image: "https://media.tracfone.com/wps/contenthandler/dav/content/libraries/wcm.library.phones/components/STSAS205DCP/wcm.comps.image/st_ecom_large1.png" )
i3 = Item.create(user_id: 1, name: "Boat", description: "a boat", image: "https://iycstorage.s3.amazonaws.com/import/wordpress/2017/06/BLISS-YACHT-IYC-2.jpg")
i4 = Item.create(user_id: 3, name: "Chair", description: "a chair", image: "https://www.circlefurniture.com/userfiles/images/Products/ekornes/Consul/Consul-Batick-mole-walnut.jpg")
i5 = Item.create(user_id: 2, name: "Plane", description: "a literal airplane", image: "https://www.claylacy.com/wp-content/uploads/2018/07/Gulfstream-GIV-Exterior-Sunset.jpg" )
i6 = Item.create(user_id: 1, name: "Desk", description: "desk", image: "https://images.globalindustrial.com/images/pd/695632WN.jpg?t=1613644139000" )


w1 = WishlistItem.create(user_id: 1, name: "Money", description: "cash", image: "https://www.investopedia.com/thmb/lqOcGlE7PI6vLMzhn5EDdO0HvYk=/1337x1003/smart/filters:no_upscale()/GettyImages-1054017850-7ef42af7b8044d7a86cfb2bff8641e1d.jpg")
w2 = WishlistItem.create(user_id: 1, name: "Chinchilla", description: "chinchilla", image: "https://www.exoticnutrition.com/Images/Product%20Pictures/Chinchilla/chinchillaleaf.jpg")


l1 = Loan.create(user_id:1, item_id: 2, duedate: Date.today + 1.week)
l2 = Loan.create(user_id:2, item_id: 1, duedate: Date.today + 2.week)

friendship = Friendship.create(user_id: 1, friend_id: 2)
friendship1 = Friendship.create(user_id: 1, friend_id: 3)

puts "Done seeding"
