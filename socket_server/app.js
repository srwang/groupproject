var WebSocketServer = require("ws").Server;
var server = new WebSocketServer({port: 2000});

var clients = [];

client_id = "2";

  server.on("connection",function(client) {
 
    client.on('message', function(message) {
        
        if (/[1-9]+/.test(message)) {
            var user= {id: message, connection: client}
            clients.push(user)              
        } else {
            console.log("client id " + client_id)
            clients.forEach(function(client){
                if (client.id === client_id) {
                    client.connection.send('hi there')
                }
            })
        } 
        console.log(clients)     
    });

  client.on("close", function() {
    clients.forEach(function(item){
        if (client === item.connection) {
            clients.splice(clients.indexOf(item), 1)
        }
    })
  });
});