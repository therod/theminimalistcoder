window.App ||= {}

App.init = ->

document.addEventListener 'turbolinks:load', ->
  App.init()
