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

  $('.quiz-house').click(function(event) {  
    console.log('house')
    that = $('house-check')
    that.prop('checked', !that.is(':checked'));
    setTimeout(function() {
      $('.first-slide').slick('slickNext');
    }, 300);
  });












})

// $(function() { // <== Doc ready

//   $('tr').click(function(event) {  

//     if(event.target.type != "radio") {

//       var that = $(this).find('input:radio');
//       that.attr('checked', !that.is(':checked'));

//     }
//   });
// });