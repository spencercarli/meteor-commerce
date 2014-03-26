Meteor.methods {
  'createCart': (userId, productId)->
    x = Cart.create {
      user_id: userId
      arrOfProducts: [productId]
    }

    console.log x
}
