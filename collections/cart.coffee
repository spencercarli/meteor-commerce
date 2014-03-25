class @Cart extends Minimongoid

  @_collection: new Meteor.Collection 'carts'

  @belongs_to: [
    {name: 'user'}
  ]

  @has_many: [
    {name: 'products', foreign_key:'cart_id'}
  ]
