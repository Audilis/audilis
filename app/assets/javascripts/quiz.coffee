$(document).on 'ready page:change', () ->
  $('[data-result]').click ->
    next = $(this).data('result')
    if next.match(/^[a-z]$/i)
      $('.question').removeClass('active')
      $("##{next}").addClass('active')
    else
      switch next.toLowerCase()
        when 'alister', 'jin', 'dimitri', 'faust', 'enzo', 'milo'
          window.location.href = "/quiz/#{next}"
