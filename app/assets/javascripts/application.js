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
//= require turbolinks
//= require_tree .
//= require material

$(document).ready(function() {
    $(document).on('click', '.row-hover', function() {
    window.location = $(this).find('a').attr('href');
    }).hover( function() {
    $(this).toggleClass('hover');
    });

});

document.addEventListener("turbolinks:load", function() {
    componentHandler.upgradeDom();
});