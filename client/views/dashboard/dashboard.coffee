Template.dashboard.helpers {
  'products': ->
    # Product.find()
    user = User.current()
    # console.log user
    if user.id isnt undefined
      cart = user.carts()[0]
      if cart isnt undefined
        productsArr = cart.arrOfProducts
        products = Product.find({'_id': {'$in' : productsArr}})
}
