window.App ||= {}

App.init = ->
  console.debug "hello world"

document.addEventListener 'turbolinks:load', ->
  App.init()
