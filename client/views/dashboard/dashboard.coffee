Template.dashboard.helpers {
  'products': ->
    # cart = User.current().carts()[0]
    # if cart isnt undefined
    #   products = cart.arrOfProducts
    #
    # products
    Product.find()
}
