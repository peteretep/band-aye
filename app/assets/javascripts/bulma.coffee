$(document).ready ->
  console.log("bulkma")
  $('.delete').click ->
    $(this).parent().hide()
    return