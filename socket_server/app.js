var WebSocketServer = require("ws").Server;
var server = new WebSocketServer({port: 2000});

var clients = [];


  server.on("connection",function(client) {
    console.log("friend connected");
 
    client.on('message', function(message) {
        var user= {id: message, connection: client}
        clients.push(user)
        console.log(clients)
    });

  client.on("close", function() {

  });
});