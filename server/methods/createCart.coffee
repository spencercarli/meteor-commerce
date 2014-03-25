Meteor.methods {
  'createCart': (userId, productId)->
    Cart.create {
      user_id: userId
      arrOfProducts: [productId]
    }
}
