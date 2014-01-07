
    var addr = document.getElementById('inputAddress').value;
    var key = document.getElementById('apiKey').value;
    
    $.getScript("https://apis.google.com/js/client.js?onload=load", function(){ });
    
     /**
     * Initialize the Google Civic Information API client, and make a request.
     */
    function load() {
        gapi.client.setApiKey(key);
        lookup(addr, renderResults);
    }

    /**
     * Execute request to look up representative info for provided location.
     */   
    function lookup(address, callback) {
        //Request object
        var req = gapi.client.request({
            'path': '/civicinfo/us_v1/representatives/lookup',
            'method': 'POST',
            'params': {'includeOffices': 'true'},
            'body': {'address': address}
        });
        req.execute(callback);
    }
    
    function truncate(str) {
      if (str.length > 50) {
            str = str.substring(0, 50) +'<br>'+ str.substring(50, str.length);
        }
      return str;
    }
  
    function formatLine(str) {   
        str = str.charAt(0).toUpperCase() + str.slice(1);
        var wordArr = str.split(" ");
        var properString ="";
        $.each(wordArr, function(key,value) {
            properString += value.charAt(0).toUpperCase() +value.slice(1) +' ';
        });
        return properString; 
    }
  
    function writeRepNode(name, officeName, party, phone, site, photo,address) {
        var divNode1 = '<li class="rep-list-group-item">';
        var imgNode;
        if (photo === false) {
            imgNode = '<span class="rep-icon glyphicon glyphicon-user"></span>';
        } else {
            imgNode = '<img class="rep-img"' + photo + ' ></img>';
        }
        var contact = '<div class="contact-info"><strong>'+name+'</strong>'+party+'<br>'+ 
                officeName+'<br>'+address+'</br><abbr title="Phone"></abbr>'+ phone +'<br><a href="' + site + '">'+site+'</a></div></li>';
        return divNode1 + imgNode + contact;
    }

    /**
     * Format and render results in the DOM.
     */
    function renderResults(response, rawResponse) {
        var locationId = document.getElementById('locationDiv');
        if (!response || response.error || 
                response.status !== 'success') {
            locationId.innerHTML = '<div class="alert alert-danger">\n\
                Sorry, we were unable to locate information \n\
                    for the address entered. <a href="./index.jsp" \n\
                        class="alert-link"><br>Try again? </a></div>';
            return;
        }

        var normalizedAddress = response.normalizedInput.line1 +', ' +
                response.normalizedInput.city + ' ' +
                response.normalizedInput.state + ' ' +
                response.normalizedInput.zip;
        
        locationId.innerHTML = '<strong>' +
                formatLine(normalizedAddress) + '</strong>';

        $.each(response.divisions, function(key, value) {
            if (value.scope === "congressional") {
                document.getElementById('sectionDiv').innerHTML = '<p>' + 
                    formatLine(value.name) + '<br></p>';
            }
        });

        var officeArr = new Array();      
        var i = 0;
        var k = 0;
        
        $.each(response.offices, function(key, value) {
            if (value.name !== "President" && value.name !== "Vice President") {
                if (value.name === "United States Senate") {
                    officeArr[i] = value;
                    i++;
                }
                officeArr[i] = value;
                i++;
            }
        });

        $.each(response.officials, function(key, value) {
            if (value.name !== "Barack Hussein Obama II"
                    && value.name !== "Joseph (Joe) Robinette Biden Jr.") {
                var name, party, phone, site, photo, node;
                var address ='';
                
                if (value.hasOwnProperty('address')) {
                    var addr = value.address[0];
                    
                    if(addr.hasOwnProperty('line1'))
                        address += addr.line1 +"<br> ";
                    if(addr.hasOwnProperty('city'))
                        address += addr.city;
                    if(addr.hasOwnProperty('state'))
                        address += ", "+ addr.state;
                    if(addr.hasOwnProperty('zip'))
                        address += " " +addr.zip;

                    address = formatLine(address);
                }

                var officeId = key;
                var officeLevel = officeArr[k].level;
                var officeName = officeArr[k].name;

                if (value.hasOwnProperty('name'))
                    name = value.name;
                else name = "";

                if (value.hasOwnProperty('party'))                  
                    party = " - " + value.party; 
                else party = "";

                if (value.hasOwnProperty('phones'))
                    phone = value.phones[0];
                else phone = "";

                if (value.hasOwnProperty('urls'))
                    site = truncate(value.urls[0]);
                else site = "";

                if (value.hasOwnProperty('photoUrl'))
                    photo = 'src=' + '"' + value.photoUrl + '"';
                else photo = false;

                var repNode = writeRepNode(name, officeName, party, 
                    phone, site, photo, address);
                    
                switch (officeLevel) {
                    case 'city' : $( ".city+other" ).append(repNode);
                        break;
                    case 'county' : $( ".county" ).append(repNode);
                        break;
                    case 'federal' : $( ".federal" ).append(repNode);
                        break;
                    case 'other' : $( ".city+other" ).append(repNode);
                        break;
                    case 'state' : $( ".state" ).append(repNode);
                        break;
                    default : break;
                } 
                k++;
            }   
        });
    }
    
 /*
 //Currently unused function to construct an object for Reps... 
   // may be useful at a future time though
    function createRep(officeId, officeLevel, officeName, name, party, phone, site, photo,address) {
        return {
            OfficeId: officeId,
            OfficeLevel: officeLevel,
            OfficeName: officeName,
            Name: name,
            Party: party,
            Phone: phone,
            Website: site,
            PhotoUrl: photo,
            Node: writeRepNode(name, officeName, party, phone, site, photo, address)
        };
    }
*/