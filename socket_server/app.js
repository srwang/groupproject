var WebSocketServer = require("ws").Server;
var server = new WebSocketServer({port: 2000});

var clients = [];
var text = "";


  server.on("connection",function(client) {
    console.log("friend connected");

    
   
    client.on('message', function(message) {
    	console.log(message)

	    client.send(message)
	    text = message;
    });

  client.on("close", function() {

  });
});

  ;