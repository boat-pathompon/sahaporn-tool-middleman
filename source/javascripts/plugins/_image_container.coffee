$ ->
  do resizeImageToCoverTarget = ->
    $('.image-container-6').each ->
      if window.windowSizeIs('xs')
        $(@).css height: 'auto', width: '100%'
      else
        targetHeight = $($(@).attr('data-target')).outerHeight()
        $(@).css height: targetHeight, width: 'auto'

        if window.windowSizeIs('lg')
          $(@).find('img').css height: 'auto', width: '100%'


  $(window).on 'resize', resizeImageToCoverTarget
