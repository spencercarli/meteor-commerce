Meteor.methods {
  'addToCart': (productId)->
    cart = Cart.first({user_id: @userId})
    products = cart.arrOfProducts
    products.push(productId)
    cart.update(arrOfProducts:products)
    console.log cart
}
