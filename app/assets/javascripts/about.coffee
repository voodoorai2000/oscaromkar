ready = -> 

  $('.next').click ->
    display_image(next_image())

  $('.previous').click ->
    display_image(previous_image())

  display_image = (image) ->
    $('.top').css("background-image", "url(/assets/About/#{image}.jpg)");
    return false

  current_image = ->
    parseInt($(".top").css("background-image").match(/\d\.jpg/)[0].split(".")[0])

  next_image = ->
    if current_image() == 5 then 1 else current_image() + 1
     
  previous_image = ->
    if current_image() == 1 then 5 else current_image() - 1

$(document).ready(ready)
$(document).on('page:load', ready)