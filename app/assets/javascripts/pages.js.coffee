# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(".tooltip.upward").tipsy({gravity: "s"})
  $(".tooltip.rightward").tipsy({gravity: "w"})
  $(".tooltip.downward").tipsy({gravity: "n"})
  $(".tooltip.leftward").tipsy({gravity: "e"})
