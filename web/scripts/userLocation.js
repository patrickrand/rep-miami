
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
    window.alert('Error: The Geolocation service failed.');
  }
 }

function writeAddressName(latLng) {
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode({
          "location": latLng
    }, function(results, status) {
          if (status == google.maps.GeocoderStatus.OK){
            var address = results[0].formatted_address;
            document.getElementById("currLoc").innerHTML = 
                    '<form id ="tempFrm" method="get" \n\
                        action="RepsViewController" role="form"><input type="hidden" \n\
                        id="inputLoc" name="inputLoc" \n\
                        value="'+address+'"></form>';
        document.getElementById("tempFrm").submit();
        } else{
            window.alert('Location search was unsuccesful. Error : ' + status);
          } });
 }
