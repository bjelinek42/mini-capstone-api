User.create!([
  {name: "Test name", email: "test@test.com", password_digest: "$2a$12$222xhfZu6azMXq/4teKere9bR9Mt8xL5DRppzlVMYenlQVzCBxnb2", admin: false},
  {name: "Ben", email: "ben@test.com", password_digest: "$2a$12$FJEx/uPBWjmaO3p94oqXvueP5WkPeH.ZZ7Ro/CeMEd2LeIOXubc0S", admin: true}
])
Supplier.create!([
  {name: "Foods 'R' Us", email: "foods@foodsrus.com", phone_number: "890-432-4356"},
  {name: "Shirts 'n' Stuff", email: "stuff@shirtsnstuff.com", phone_number: "890-654-4426"},
])
Product.create!([
  {name: "salad", price: "10.0", description: "leaves and other stuff", inventory: nil, supplier_id: 1},
  {name: "cake", price: "23.0", description: "delicious cake", inventory: nil, supplier_id: 1},
  {name: "pants", price: "35.0", description: "leg shirts", inventory: nil, supplier_id: 2},
  {name: "shirt", price: "15.0", description: "arm pants duh", inventory: nil, supplier_id: 2},
  {name: "gloves", price: "35.0", description: "hand shoes", inventory: nil, supplier_id: 2},
  {name: "shoes", price: "45.0", description: "foot gloves", inventory: nil, supplier_id: 2},
  {name: "Hat", price: "23.0", description: "fattening delicious cake", inventory: nil, supplier_id: 2},
  {name: "Sweat Pants", price: "40.0", description: "makes legs sweaty", inventory: nil, supplier_id: 2},
  {name: "sweat pants", price: "40.0", description: "makes legs sweaty", inventory: nil, supplier_id: 2},
  {name: "sweat pants", price: "40.0", description: "makes legs sweaty", inventory: nil, supplier_id: 2},
  {name: "sweatshirt", price: "35.0", description: "makes torso sweaty", inventory: nil, supplier_id: 2},
  {name: "sweatshirt", price: "35.0", description: "makes torso sweaty", inventory: nil, supplier_id: 2}
])
Image.create!([
  {url: "https://images.squarespace-cdn.com/content/v1/5eb2f5532d212a0e2b3f2102/1600972148147-KKI2J85MHO7WLFD8YOF9/Per+Location_Pizza+Slice+Cheese+Pull.jpg?format=1500w", product_id: product.first.id},
  {url: "https://3dur7j6ifxs3y5qo2e7mraga-wpengine.netdna-ssl.com/wp-content/uploads/2020/02/Leon-Gessi-2.jpg", product_id: product.first.id},
  {url: "https://3dur7j6ifxs3y5qo2e7mraga-wpengine.netdna-ssl.com/wp-content/uploads/2020/02/Rufranos-1.jpg", product_id: product.first.id},
  {url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bestsweatshirtswomen-1619798167.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*", product_id: product.first.id}
])
Category.create!([
  {name: "food"},
  {name: "clothes"}
])

CartedProduct.create!([
  {user_id: 1, product_id: 9, quantity: 2, status: "removed", order_id: nil},
  {user_id: 1, product_id: 9, quantity: 2, status: "removed", order_id: nil},
  {user_id: 1, product_id: 10, quantity: 2, status: "purchased", order_id: 1},
  {user_id: 1, product_id: 9, quantity: 2, status: "purchased", order_id: nil},
  {user_id: 1, product_id: 9, quantity: 2, status: "purchased", order_id: nil},
  {user_id: 1, product_id: 9, quantity: 2, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 9, quantity: 2, status: "removed", order_id: nil},
  {user_id: 2, product_id: 10, quantity: 2, status: "purchased", order_id: 13},
  {user_id: 2, product_id: 10, quantity: 2, status: "purchased", order_id: 13},
  {user_id: 2, product_id: 10, quantity: 2, status: "purchased", order_id: 13},
  {user_id: 2, product_id: 10, quantity: 2, status: "purchased", order_id: 13},
  {user_id: 2, product_id: 10, quantity: 2, status: "purchased", order_id: 13},
  {user_id: 2, product_id: 9, quantity: 2, status: "purchased", order_id: 13},
  {user_id: 2, product_id: 9, quantity: 2, status: "removed", order_id: nil}
])

CategoryProduct.create!([
  {product_id: 2, category_id: 1},
  {product_id: 10, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 4, category_id: 2},
  {product_id: 5, category_id: 2},
  {product_id: 9, category_id: 2}
])
Order.create!([
  {user_id: 1, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 1, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 1, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 2, subtotal: "20.0", tax: "1.8", total: "21.8"},
  {user_id: 1, subtotal: "256.0", tax: "23.04", total: "279.04"},
  {user_id: 1, subtotal: "256.0", tax: "23.04", total: "279.04"},
  {user_id: 1, subtotal: "256.0", tax: "23.04", total: "279.04"},
  {user_id: 1, subtotal: "256.0", tax: "23.04", total: "279.04"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "300.0", tax: "27.0", total: "327.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"}
])

