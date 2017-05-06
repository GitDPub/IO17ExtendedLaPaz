// Maps
var map;
$(document).ready(function () {
    var map = $('#map');
    if(map.length){
        var lat_center = $('#map').data('latcenter');
        var lng_center = $('#map').data('lngcenter');
        var lat_marker = $('#map').data('latmarker');
        var lng_marker = $('#map').data('lngmarker');
        var title = $('#map').data('title');
        map = new GMaps({
            el: '#map',
            lat: lat_center,
            lng: lng_center,
            zoomControl: false,
            zoomControlOpt: {
                style: 'SMALL',
                position: 'TOP_LEFT'
            },
            panControl: false,
            streetViewControl: false,
            mapTypeControl: false,
            scrollwheel: false,
            overviewMapControl: false
        });
        map.addMarker({
            lat: lat_marker,
            lng: lng_marker,
            title: title,
        });
    }
    
});