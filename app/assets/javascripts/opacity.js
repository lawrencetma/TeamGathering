 $(document).ready(function() {
      if (screen.width > 781) {
            $(window).scroll(function () {
                  var height = $('body').height();
                  var scrollTop = $('body').scrollTop();
                  var opacity = 1;
                  opacity = 1 - (scrollTop/500)
                  $('.fixed-title').css('opacity', opacity);
            });
      } else if(screen.width > 480) {
            $(window).scroll(function () {
                  var height = $('body').height();
                  var scrollTop = $('body').scrollTop();
                  var opacity = 1;
                  opacity = 1 - (scrollTop/200)
                  $('.fixed-title').css('opacity', opacity);
            });
      } else {
            $(window).scroll(function () {
                  var height = $('body').height();
                  var scrollTop = $('body').scrollTop();
                  var opacity = 1;
                  opacity = 1 - (scrollTop/100)
                  $('.fixed-title').css('opacity', opacity);
            });
      }
  });