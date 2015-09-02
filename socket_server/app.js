var WebSocketServer = require("ws").Server;
var server = new WebSocketServer({port: 2000});

var clients = [];

  server.on("connection",function(client) {
 
    client.on('message', function(message) {        
        if (parseInt(message)) {//changed this
            var user= {id: message, connection: client}
            clients.push(user)              
        } else { // sending a message to admin or user

            if (message.split(" ")[0] === "You") {
                message = message.split("admin id:")
                var adminArr = message[1].split(' ')

                adminArr.forEach(function(admin){
                    sendMessage(admin, message[0].trim());
                })
            } else {
                console.log("sending hey there")
                sendMessage("2", "hey there");
            }

            function sendMessage(client_id, message) {//made this into function
                clients.forEach(function(client){
                    if (client.id === client_id) {
                        client.connection.send(message)
                    }
                })               
            }

        } 
    });

  client.on("close", function() {
    clients.forEach(function(item){
        if (client === item.connection) {
            clients.splice(clients.indexOf(item), 1)
        }
    })
  
    });


});