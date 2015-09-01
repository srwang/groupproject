var WebSocketServer = require("ws").Server;
var server = new WebSocketServer({port: 2000});
client_count = 1;

var clients = [];

client_id = "2";


  server.on("connection",function(client) {

    console.log("friend connected");
    console.log(client_count)
    client_count++
 
    client.on('message', function(message) {
	var unique = true

    	if (/[1-9]+/.test(message)) {
    		clients.forEach(function(client){
    			if (client.id == parseInt(message)) {
    				unique = false
    			} 
    		})
    		if (unique === true) {
		    	var user= {id: message, connection: client}
		    	clients.push(user)    			
    		}
    	} else {
    		clients.forEach(function(client){
    			if (client.id === client_id) {
    				client.connection.send('hi there')
    			}
    		})
    	}
    	console.log(clients)    		



    });

  client.on("close", function() {

  });
});