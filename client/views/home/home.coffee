Template.home.rendered = ->

  #SEO Page Title & Description
  document.title = "My New Meteor App"
  $("<meta>", { name: "description", content: "Page description for My New Meteor App" }).appendTo "head"

Template.home.helpers {
  'products': ->
    Product.find()
}
