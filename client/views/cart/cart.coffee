Template.cart.helpers {
  'itemTotal': ->
    id_quantity = this._id
    quantity = Session.get(id_quantity)

    # On initial load there won't be a session variable
    if quantity is undefined
      quantity = 1

    @price * quantity
}

Template.cart.events {
  'input [name=quantity]': (e, t)->
    e.preventDefault()

    q = t.find('[name=quantity]').value
    id_quantity = this._id
    Session.set(id_quantity, q)

  'click .remove-from-cart': (e, t)->
    e.preventDefault()

    productId = @_id
    Meteor.call 'removeFromCart', productId
}
