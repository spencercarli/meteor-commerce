Meteor.methods {
  'removeFromCart': (productId) ->
    user = User.first(@userId)
    cart = user.carts()[0]
    products = cart.arrOfProducts
    i = _.indexOf(products, productId, false)

    # Delete one element after the index, deleting the products item
    products.splice(i, 1)

    # Update the array within the cart with array that doesn't have the
    # product id
    cart.update(arrOfProducts: products)
}
