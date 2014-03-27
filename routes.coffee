Router.map ->
  @route 'home',
    path: '/',
    before: ->
      Meteor.subscribe 'products'
      Meteor.subscribe 'carts'

  @route 'dashboard',
    path: '/dashboard',
    before: ->
      # This needs to change because we only need the user's cart
      Meteor.subscribe 'carts'
      Meteor.subscribe 'myProducts'

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
