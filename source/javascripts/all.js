//= require_tree .

if ('addEventListener' in document) {
  document.addEventListener('DOMContentLoaded', function() {
    FastClick.attach(document.body);
  }, false);
}

$(function() {
  FastClick.attach(document.body);
});

$(document).ready(function () {
  // Handler for .ready() called.
  $('.scroll').click(function () {
    $('html, body').animate({
      scrollTop: $('.second').offset().top
    }, 'slow');
  });
});






$(document).ready(function(){
  var isOnScreen = function(elem){
    var win = $(window);

    var viewport = {
      top : win.scrollTop(),
      left : win.scrollLeft()
    };
    viewport.right = viewport.left + win.width();
    viewport.bottom = viewport.top + win.height();

    var bounds = elem.offset();
    bounds.right = bounds.left + elem.outerWidth();
    bounds.bottom = bounds.top + elem.outerHeight();

    return (!(viewport.right < bounds.left || viewport.left > bounds.right || viewport.bottom < bounds.top || viewport.top > bounds.bottom));

  };
  $(window).scroll(function(){
    $('.Count').each(function(i, elem) {
      elem = $(elem);
      if (isOnScreen(elem)) {
        if (!elem.hasClass("animated")) {
          elem.addClass("animated");
          var self = $(elem);
          jQuery({ Counter: 0 }).animate({ Counter: self.text() }, {
            duration: 1000,
            easing: 'swing',
            step: function () {
              self.text(Math.ceil(this.Counter));
            }
          });
        }
      }
    });
  });
});




$(document).ready(function () {
  $('.button_blue').click(function () {
    $('html, body').animate({
      scrollTop: $('.fourth').offset().top
    }, 'slow');
  });
});

document.addEventListener("DOMContentLoaded", function(event) {
  var firebase = new Firebase("https://resplendent-fire-7746.firebaseio.com/contatos");
  var btnContato = document.getElementById("signup-button");

  btnContato.addEventListener("click", function(e) {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;

    if (name && email) {
      firebase.push({
        name: name,
        email: email,
      });

      document.getElementById("signup-form").innerHTML = 'Obrigado, em breve seu convite será enviado!';
    }

    e.preventDefault();
  });

});
