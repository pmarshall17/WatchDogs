$(document).ready( function(){
  $('.first-slide').slick({
    arrows: true,
    dots: true,
    });
  $('.slick-form').change(function() {
    setTimeout(function() {
      $('.first-slide').slick('slickNext');
    }, 300);
  });

  // $('.quiz-house').click(function(event) {  
  //   that = $('house-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });

  $('.tumblr-photos').slick({
    arrows: true,
    dots: true 
  });
  $('.tumblr-slick').change(function() {
    setTimeout(function() {
      $('.tumblr-photos').slick('slickNext');
    }, 300);
  })
})
