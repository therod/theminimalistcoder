window.App ||= {}

App.init = ->
  $toggler = $(".js-toggle-image")
  $flip_container = $(".js-flip-container")

  $toggler.on "click", ->
    $flip_container.toggleClass("show")
    event.preventDefault()

document.addEventListener 'turbolinks:load', ->
  App.init()
