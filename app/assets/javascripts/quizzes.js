// Quiz carasuel

$(document).ready( function(){
  $('.first-slide').slick({
    arrows: false,
    dots: true,
    });
  $('.slick-form').change(function() {
    setTimeout(function() {
      $('.first-slide').slick('slickNext');
    }, 300);
  });


// Slick Info Page Carasel

  $('.tumblr-photos').slick({
    arrows: false,
    dots: true,
    autoplay: true,
    autoplaySpeed: 3000
  });
  $('.tumblr-slick').change(function() {
    setTimeout(function() {
      $('.tumblr-photos').slick('slickNext');
    }, 300);
  })


// Quiz Icon clickable

  // Where are you living?

  // $('.quiz-house').click(function(event) {
  //   that = $('house-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //   console.log('house')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // $('.quiz-apt').click(function(event) {
  //   that = $('apt-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //   console.log('apt')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // // Where will you spend most time with your dog?
  //
  // $('.quiz-outside').click(function(event) {
  //   that = $('outside-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     console.log('outside')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // $('.quiz-inside').click(function(event) {
  //   that = $('inside-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     console.log('inside')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // // Do you prefer Male or Female?
  //
  // $('.quiz-male').click(function(event) {
  //   that = $('male-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     console.log('male')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // $('.quiz-female').click(function(event) {
  //   that = $('female-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     console.log('female')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // // Age?
  //
  // $('.quiz-baby').click(function(event) {
  //   that = $('baby-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     console.log('baby')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // $('.quiz-young').click(function(event) {
  //   that = $('young-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     console.log('young')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // $('.quiz-adult').click(function(event) {
  //   that = $('adult-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     console.log('adult')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
  //
  // $('.quiz-senior').click(function(event) {
  //   that = $('senior-check')
  //   that.prop('checked', !that.is(':checked'));
  //   setTimeout(function() {
  //     console.log('senior')
  //     $('.first-slide').slick('slickNext');
  //   }, 300);
  // });
})
