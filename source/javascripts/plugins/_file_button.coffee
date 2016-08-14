$ ->
  $('.btn-file').each ->
    $target = $($(@).attr('data-target'))
    $target.hide()
    $(@).css display: 'inline-block'
    $(@).click (e) ->
      e.preventDefault()
      $target.trigger('click')
