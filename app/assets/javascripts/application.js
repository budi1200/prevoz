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
//= require jquery3
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require material

$(document).ready(function() {
    $(document).on('click', '.row-hover', function() {
    window.location = $(this).find('a').attr('href');
    }).hover( function() {
    $(this).toggleClass('hover');
    });

    $("#ride_start_id").on('change', function(){
        $("#ride_start_id").parent().removeClass('is-focused');
    });

    $("#ride_end_id").on('change', function(){
        $("#ride_end_id").parent().removeClass('is-focused');
    });
});

function timepick() {
    var timepicker = new TimePicker(["ride_time"], {
        theme: "dark",
        lang: "en"
    });
    timepicker.on("change", function(evt) {
        var value = (evt.hour || "00") + ":" + (evt.minute || "00");
        evt.element.value = value;
    });
}

document.addEventListener("turbolinks:load", function() {
    componentHandler.upgradeDom();
    $(document).ready(function(){
        if($(document).find('.flash').length == 1){
            asd = $(".flash").parent();
            window.setTimeout(function(){
                asd.css("transform", "translateY(0px)");
            }, 500);

            window.setTimeout(function(){
                asd.css("transform", "");
            }, 4500);
        }
    });
});

function getDuration() {
    //Find the distance
    var distanceService = new google.maps.DistanceMatrixService();
    distanceService.getDistanceMatrix(
        {
            origins: [$('#origin').text().split(' ').join('+')],
            destinations: [$('#dest').text().split(' ').join('+')],
            travelMode: google.maps.TravelMode.DRIVING,
            unitSystem: google.maps.UnitSystem.METRIC,
            durationInTraffic: true,
        },
        function(response, status) {
            if (status !== google.maps.DistanceMatrixStatus.OK) {
            console.log("Error:", status);
        } else {
            $("#asdfg").text(response.rows[0].elements[0].duration.text);
        }
        }
    );
}