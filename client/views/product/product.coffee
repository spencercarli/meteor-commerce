Template.product.helpers {
  'isInCart': ->
    isInCart = false
    user = User.current()
    if user isnt undefined
      cart = user.carts()[0]
      if cart isnt undefined
        products = cart.arrOfProducts
        isInCart = _.contains(products, this._id)
    isInCart
}

Template.product.events {
  'click .add-to-cart': (e, t)->
    e.preventDefault()

    productId = t.firstNode.id

    if Meteor.user()
      cart = User.current().carts()
      if cart.length is 0
        # Create a new cart if the user doesn't already have one
        Meteor.call 'createCart', Meteor.user()._id, productId
      else
        Meteor.call 'addToCart', productId
    else
      alert 'Make an account'

  'click .remove-from-cart': (e, t)->
    e.preventDefault()

    productId = @_id
    Meteor.call 'removeFromCart', productId
}
