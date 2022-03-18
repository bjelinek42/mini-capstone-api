# Product.create!([
#   {name: "pizza", price: "15.0", image_url: "https://www.simplyrecipes.com/thmb/8caxM88NgxZjz-T2aeRW3xjhzBg=/2000x1125/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2019__09__easy-pepperoni-pizza-lead-3-8f256746d649404baa36a44d271329bc.jpg", description: "cheese, bread, sauce", inventory: nil},
#   {name: "salad", price: "10.0", image_url: "https://cdn.loveandlemons.com/wp-content/uploads/2021/04/green-salad-500x375.jpg", description: "leaves", inventory: nil},
#   {name: "shoes", price: "45.0", image_url: "https://assets.adidas.com/images/w_600,f_auto,q_auto/4e894c2b76dd4c8e9013aafc016047af_9366/Superstar_Shoes_White_FV3284_01_standard.jpg", description: "foot gloves", inventory: nil},
#   {name: "gloves", price: "35.0", image_url: "https://cdn.shopify.com/s/files/1/1249/3023/products/FineTOUGHOKGloveIndigoWhite.png?v=1637343200", description: "hand shoes", inventory: nil},
#   {name: "shirt", price: "15.0", image_url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSLvktLs1ESMN7QNVvTulcwvss5sq3_jBgNfo_FOoZoCvelF1v-h1cY1zoZ2i6pa1nIBpzpdyc1c7ADc9N_mJx8k3JsGcnoaSwIHQGk_9CkHNIre8lmsVk2&usqp=CAE", description: "arm pants", inventory: nil},
#   {name: "shirt", price: "50.0", image_url: nil, description: nil, inventory: nil},
#   {name: nil, price: nil, image_url: nil, description: nil, inventory: nil},
#   {name: nil, price: nil, image_url: nil, description: nil, inventory: nil},
#   {name: "gloves", price: "35.0", image_url: "https://cdn.shopify.com/s/files/1/1249/3023/products/FineTOUGHOKGloveIndigoWhite.png?v=1637343200", description: "hand shoes", inventory: nil}
# ])

supplier = Supplier.new({name: "Foods 'R' Us", phone_number: "890-432-4356", email: "foods@foodsrus.com"})
supplier.save

supplier = Supplier.new({name: "Shirts 'n' Stuff", phone_number: "890-654-4426", email: "stuff@shirtsnstuff.com"})
supplier.save
