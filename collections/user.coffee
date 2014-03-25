class @User extends Minimongoid

  @_collection: Meteor.users

  @current: ->
    if Meteor.userId()
      User.init Meteor.user()

  @has_many: [
    {name: 'carts', foreign_key: 'user_id'}
  ]
