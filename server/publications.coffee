Meteor.publish "products", ->
  Product.find()

Meteor.publish "carts", ->
  Cart.find()
