class @Product extends Minimongoid

  @_collection: new Meteor.Collection 'products'

  @belongs_to: [
    {name:'cart'}
  ]
