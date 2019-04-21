// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(".nav").hide();
$("#hamburger").click(function(){
  $(".nav").slideToggle("slow", function(){
    $("#hamburger").hide();
    $(".nav").show();
    $("#cross").show();
  });
});


$("#cross").click(function(event){
  event.preventDefault();
  //click event that takes information from the event and prevents refresh
  if ($("#cross").is(":visible")){
    $(".nav").slideToggle("slow", function(){
      $("#cross").hide();
      $("#hamburger").show();
    });
  }
});
