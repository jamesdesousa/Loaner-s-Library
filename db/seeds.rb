u1 = User.create(name: "william", username: "william", password: "william")
u2 = User.create(name: "james123", username: "james123", password: "james123")
u3 = User.create(name: "password", username: "password", password: "password")

i1 = Item.create(user_id: 1, name: "car", description: "a car", image: "https://www.extremetech.com/wp-content/uploads/2019/12/SONATA-hero-option1-764A5360-edit.jpg" )
i2 = Item.create(user_id: 2, name: "phone", description: "a phone", image: "https://media.tracfone.com/wps/contenthandler/dav/content/libraries/wcm.library.phones/components/STSAS205DCP/wcm.comps.image/st_ecom_large1.png" )
i3 = Item.create(user_id: 1, name: "boat", description: "a boat", image: "https://iycstorage.s3.amazonaws.com/import/wordpress/2017/06/BLISS-YACHT-IYC-2.jpg")
i4 = Item.create(user_id: 3, name: "chair", description: "a chair", image: "https://www.circlefurniture.com/userfiles/images/Products/ekornes/Consul/Consul-Batick-mole-walnut.jpg")
i5 = Item.create(user_id: 2, name: "plane", description: "a literal airplane", image: "https://www.claylacy.com/wp-content/uploads/2018/07/Gulfstream-GIV-Exterior-Sunset.jpg" )
i6 = Item.create(user_id: 1, name: "desk", description: "desk", image: "https://images.globalindustrial.com/images/pd/695632WN.jpg?t=1613644139000" )


w1 = WishlistItem.create(user_id: 1, name: "money", description: "cash", image: "https://media3.s-nbcnews.com/j/newscms/2019_06/2746941/190208-stock-money-fanned-out-ew[…]p_fa445b2f6f3e86a3ffa18707e6a8adcb.nbcnews-fp-1024-512.jpg")
w2 = WishlistItem.create(user_id: 1, name: "Chinchilla", description: "chinchilla", image: "https://www.exoticnutrition.com/Images/Product%20Pictures/Chinchilla/chinchillaleaf.jpg")


l1 = Loan.create(user_id:1, item_id: 2, duedate: Date.today + 1.week)
l2 = Loan.create(user_id:2, item_id: 1, duedate: Date.today + 2.week)

friendship = Friendship.create(user_id: 1, friend_id: 2)
friendship1 = Friendship.create(user_id: 1, friend_id: 3)

puts "Done seeding"
