ready = ->
  $('#tic_tac_toe .field_block').click (e) ->
    elm = $(e.target)

    $.ajax
      url: $('#tic_tac_toe .game_field').data('server-path')
      type: "POST"
      dataType: "script"
      data: x: elm.data('x'), y: elm.data('y')
      success: (response) ->
        window.location.reload()

$(document).ready(ready)
$(document).on('page:load', ready)
