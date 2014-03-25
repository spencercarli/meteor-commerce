Router.map ->
  @route 'home',
    path: '/',
    before: ->
      Meteor.subscribe 'products'

  @route 'dashboard',
    path: '/dashboard'

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
