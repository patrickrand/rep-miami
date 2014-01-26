

function getUserAddress() {
    
    var address = $("#inputAddress").val() +", ";
    var user_location = address + $( "#dropdownCity option:selected" ).text() +" FL";

    document.getElementById("locationInput").innerHTML = 
                    '<form id ="dynamicForm" method="get" \n\
                        action="reps_view.html" role="form"><input type="hidden" \n\
                        id="inputAddress" name="inputAddress" \n\
                        value="'+user_location+'"></form>';
        document.getElementById("dynamicForm").submit();
    
}


/*
 * 
 * Make request to Google Maps Geocoder API
 * 
 */
 
 function geolocateUser() {
  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
      writeAddressName(pos);
    });
  } else {
    alert('Error: The Geolocation service failed.');
  }
 }

function writeAddressName(latLng) {
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode({
          "location": latLng
    }, function(results, status) {
          if (status == google.maps.GeocoderStatus.OK){
            var address = results[0].formatted_address;
            document.getElementById("locationInput").innerHTML = 
                    '<form id ="dynamicForm" method="get" \n\
                        action="reps_view.html" role="form"><input type="hidden" \n\
                        id="inputAddress" name="inputAddress" \n\
                        value="'+address+'"></form>';
        document.getElementById("dynamicForm").submit();
        } else{
            alert('Location search was unsuccesful. Error : ' + status);
          } });
 }
