Meteor.publish "products", ->
  Product.find()
