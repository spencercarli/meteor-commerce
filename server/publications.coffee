Meteor.publish "products", ->
  Product.find()

Meteor.publish "carts", ->
  Cart.find()

Meteor.publish 'myCart', ->
  cart = Cart.first({user_id: @userId})
  productsArr = cart.arrOfProducts
  products = Product.find({'_id': {'$in' : productsArr}})
