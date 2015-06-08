$(function() {
  $(document).scroll(function (event) {
    if($(this).scrollTop() > 60) {   
      $('nav').addClass('scrolled');
    } else {
      $('nav').removeClass('scrolled');
    }
  });

  $('a.who-we-are').click(function (event) {
    event.preventDefault();
    location.hash = $(event.target).attr('href');
    $('body').scrollTo('section.our-team', 1000);
  });

  $('a.what-we-do').click(function (event) {
    event.preventDefault();
    location.hash = $(event.target).attr('href');
    $('body').scrollTo('section.our-tradecraft', 1000);
  });

  $('a.contact-us').click(function (event) {
    event.preventDefault();
    location.hash = $(event.target).attr('href');
    $('body').scrollTo('section.contact-us', 500);
  });

  $('form.contact-form button').click(function(event) {
    event.preventDefault();
    var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i,
        name = $.trim($('.contact-form input[name="name"]').val()),
        email = $.trim($('.contact-form input[name="email"]').val()),
        message = $.trim($('.contact-form textarea[name="message"]').val());

    if (name === '') {
      alert('Please enter your name.');
      return;
    }

    if (email === '' || !regex.test(email)) {
      alert('Please enter a valid email address.');
      return;
    }

    if (message === '') {
      alert('Please enter a message for us.');
      return;
    }

    $.ajax({
      url: '/contact',
      type: 'POST',
      data: { contact: { name: name, email: email, message: message }},
      success: function(data, status, xhr) {
        $('form input, form textarea').val('');
        alert('Thank you! Your message was successfuly submitted. You should hear from us soon.');
      },
      error: function(data, status, xhr) {
        alert('We were unable to send a message at this time. Please try later.');
      }
    });
  });
});
