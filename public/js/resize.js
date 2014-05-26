    $('#body').css('min-height', screen.height);


      var resizeShizzy = function() {
        var w = +$(window).width();
        var $sd = $('.sd');
        if (w > 800) {
          sdHeight = w / 5;
        } else if (w < 800) {
          sdHeight = w / 2.5;
        }

        console.log("this is Shehzan's image height ", sdHeight);
        $sd.css({'height': sdHeight });
      };

      $(window).on('resize', function() {
        resizeShizzy();
      });

      window.onload = resizeShizzy();

