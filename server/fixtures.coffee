Meteor.startup ->
  if Product.find().count() is 0
    Product.create {
      name: 'Name 1',
      price: 40.00,
      description: "Blah Blah blahsdlfajsdf"
    },

    Product.create {
      name: 'Name 2',
      price: 30.00,
      description: "asldfj woof woof"
    },

    Product.create {
      name: 'Name 3',
      price: 20.00,
      description: "asdfkja;sldf meow meow"
    }
