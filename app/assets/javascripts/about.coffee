ready = ->
 $('.next').click ->
   current_image = $(".top").css("background-image").match(/\d\.jpg/)[0].split(".")[0]

   current_image = parseInt( current_image );
   if current_image == 5
     current_image = 1 
   else
    current_image = parseInt( current_image );
    current_image = current_image + 1

   $('.top').css("background-image", "url(/assets/About/#{current_image}.jpg)");
   return false

 $('.previous').click ->
   current_image = $(".top").css("background-image").match(/\d\.jpg/)[0].split(".")[0]

   current_image = parseInt( current_image );
   if current_image == 1
     current_image = 5 
   else
    current_image = parseInt( current_image );
    current_image = current_image - 1

   $('.top').css("background-image", "url(/assets/About/#{current_image}.jpg)");
   return false

$(document).ready(ready)
$(document).on('page:load', ready)
