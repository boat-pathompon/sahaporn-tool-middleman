$ ->
  window._bsBreakpoints = {
    xs: 480
    sm: 768
    md: 992
    lg: 1200
  }

  # Expected parameter to be lg, md, sm, xs
  window.windowSizeIs = (size) =>
    windowWidth = $(window).width()
    switch size
      when 'lg'
        windowWidth >= _bsBreakpoints.lg
      when 'md'
        windowWidth < _bsBreakpoints.lg and windowWidth >= _bsBreakpoints.sm
      when 'sm'
        windowWidth < _bsBreakpoints.md and windowWidth >= _bsBreakpoints.xs
      when 'xs'
        windowWidth < _bsBreakpoints.xs



