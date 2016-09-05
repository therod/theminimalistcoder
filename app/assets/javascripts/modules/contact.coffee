window.App ||= {}

App.contact = ->

  $poc = $('.js-poc')
  $poc.on 'click', ->
    $answer = $(this).find('.js-poc-body')
    $answer.slideToggle()
    $(this).find('.poc-title').toggleClass("poc-title-active")
    $(this).find('.js-circle-slide-button').toggleClass("active")

