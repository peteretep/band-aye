# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  console.log("booma")

  $(".going-checkbox").bootstrapToggle()
  $(".going-checkbox").change ->
    $.post 'gig_signup',
        authenticity_token: $('meta[name="csrf-token"]').attr('content'),
        # beforeSend: -> {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
        gig_id: ,
        signup: true
    console.log("okos")