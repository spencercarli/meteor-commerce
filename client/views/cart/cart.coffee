Template.cart.helpers {
  'itemTotal': ->
    quantity = Session.get('quantity')
    # console.log this.price
    quantity * @price
}

Template.cart.events {
  'input [name="quantity"]': (e, t)->
    e.preventDefault()

    Session.set('quantity', parseInt($('[name=quantity]').val(), 10))
}
