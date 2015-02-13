$(function() {
  $(document).scroll(function (event) {
    if($(this).scrollTop() > 60) {   
      $('nav').addClass('scrolled');
    } else {
      $('nav').removeClass('scrolled');
    }
  });

  $('.who-we-are').click(function (event) {
    event.preventDefault();
    location.hash = $(event.target).attr('href');
    $('body').scrollTo('section.one', 1000);
  });

  $('.what-we-do').click(function (event) {
    event.preventDefault();
    location.hash = $(event.target).attr('href');
    $('body').scrollTo('section.two', 1000);
  });
});
