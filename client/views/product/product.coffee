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

}
