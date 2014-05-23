    $('#body').css('min-height', screen.height);


      var resizeShizzy = function() {
        var w = +$(window).width();
        var $sd = $('.sd');
        if (w > 800) {
          var sdHeight = w / 5;
        } else if (w < 800) {
          var sdHeight = w / 2.5;
        }

        console.log("this Shehzan height ", sdHeight);
        $sd.css({'height': sdHeight });
      };

      $(window).on('resize', function() {
        resizeShizzy();
      });

      window.onload = resizeShizzy();

