$(document).on 'ready page:change', () ->
  $('[data-result]').click ->
    curr = $(this).parents('.question')
    next = $(this).data('result')
    if next.match(/^[a-z]$/i)
      curr.fadeOut 400, () ->
        $("##{next}").fadeIn(400)
    else
      switch next.toLowerCase()
        when 'alister', 'jin', 'dimitri', 'faust', 'enzo', 'milo'
          window.location.href = "/quiz/#{next}"
