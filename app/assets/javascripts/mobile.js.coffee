ready = ->
  #mobile menu toggling
  $("#menu_icon").click ->
    $("header nav ul").toggleClass "show_menu"
    $("#menu_icon").toggleClass "close_menu"
    false


$(document).ready(ready)
$(document).on('page:load', ready)