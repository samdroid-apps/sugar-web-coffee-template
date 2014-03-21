add_random = ->
  list = $ 'ul'
  item = $ "<li>#{ Math.random() }</li>"
  list.prepend item

define (require) ->
  activity = require 'sugar-web/activity/activity'
  require 'jquery'

  activity.setup()

  d = $ 'document'
  d.ready ->
    add_random()

    add_button = $ '#main-toolbar #add'
    add_button.click add_random
