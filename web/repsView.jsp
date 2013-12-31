<%-- 
    Document   : repsView
    Created on : Dec 30, 2013, 9:22:03 PM
    Author     : Patrick
--%>

<!doctype html>
<html>
  <head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
     <script type="text/javascript">

        
        var apiKey = 'AIzaSyCN9rkEJ848kuw9-YO7vZ41Mt7v2bhckcs';
      /**
       * Build and execute request to look up voter info for provided address.
       * @param {string} address Address for which to fetch voter info.
       * @param {function(Object)} callback Function which takes the
       *     response object as a parameter.
       */
      
         // var address = $("input[id*=address]").val();
       function lookup(address, callback) {

        /**
         * Request object for given parameters.
         * @type {gapi.client.HttpRequest}
         */
       
       var req = gapi.client.request( {
           'path' : '/civicinfo/us_v1/representatives/lookup',
            'method' : 'POST', // Required. The API does not allow GET requests.
            'body' : {'address' : address}
       });
       
       req.execute(callback);
      }

      /**
       * Render results in the DOM.
       * @param {Object} response Response object returned by the API.
       * @param {Object} rawResponse Raw response from the API.
       */
      function renderResults(response, rawResponse) {

        var el = document.getElementById('results');
        if (!response || response.error) {
          el.appendChild(document.createTextNode(
              'Error while trying to fetch represenatives'));
          return;
        }
        var normalizedAddress = response.normalizedInput.line1 + ' ' +
            response.normalizedInput.city + ', ' +
            response.normalizedInput.zip + ' ' +
            response.normalizedInput.state + ' ,'+
            response.normalizedInput.location + ' ' + response.officials.$(apiKey).name;
    

       
          var normEl = document.createElement('strong');
          normEl.appendChild(document.createTextNode(
              'Polling place for ' + normalizedAddress + ': '));
          el.appendChild(normEl);
          
        
        
      }

      /**
       * Initialize the API client and make a request.
       */
      function load() {
        gapi.client.setApiKey(apiKey);
        lookup('1263 Pacific Ave. Kansas City KS', renderResults);
      }
    </script>
    <script src="https://apis.google.com/js/client.js?onload=load"></script>
  </head>
  <body>
    <div id="results"></div>
  </body>
</html>
