// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

navigator.geolocation.getCurrentPosition(function(position) {
console.log(position.coords.latitude, position.coords.longitude);
});