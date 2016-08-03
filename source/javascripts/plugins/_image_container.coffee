$ ->
  do resizeImageToCoverTarget = ->
    $('.image-container-6').each ->
      height =  if $(window).width() == $(@).parents('.col-xs-12').outerWidth()
                  'auto'
                else
                  $($(@).attr('data-target')).outerHeight()
      $(@).css height: height

  $(window).on 'resize', resizeImageToCoverTarget
