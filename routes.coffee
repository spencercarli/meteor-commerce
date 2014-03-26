Router.map ->
  @route 'home',
    path: '/',
    before: ->
      Meteor.subscribe 'products'
      Meteor.subscribe 'carts'

  @route 'dashboard',
    path: '/dashboard',
    before: ->
      Meteor.subscribe 'myCart'

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
