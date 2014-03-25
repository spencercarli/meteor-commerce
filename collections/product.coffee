class @Product extends Minimongoid

  @_collections: new Meteor.Collection 'products'

  @belongs_to: [
    {name:'cart'}
  ]
