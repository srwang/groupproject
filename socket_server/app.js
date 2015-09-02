var WebSocketServer = require("ws").Server;
var server = new WebSocketServer({port: 2000});
client_count = 1;

var clients = [];


  server.on("connection",function(client) {
    // console.log(client_count)

    console.log("client connected");

    
    client_count++
 
    client.on('message', function(message) {
    var unique = true

      if (/[1-9]+/.test(message) && /[A-z]+/.test(message) === false) {
        clients.forEach(function(client){
          if (client.id == parseInt(message)) {
              unique = false
          } 
        })
        if (unique === true) {
          var user= {id: message, connection: client}
          clients.push(user)  
          console.log(clients)

        }
      }else if (message.split(" ")[0] === "You") {
        console.log("***************")
        console.log("messaging the admin")

                message = message.split("admin id:")

                console.log(message)
                var adminArr = message[1].split(' ')

                adminArr.forEach(function(admin){
                    sendMessage(admin, message[0].trim());
                })
            function sendMessage(client_id, message) {//made this into function
              clients.forEach(function(client){
                  if (client.id === client_id) {
                      client.connection.send(message)
                  }
              })
              } 

            }
        else if (/[1-9]+/.test(message) && /[A-z]+/.test(message)) {
        console.log("############")
        console.log(message)
        client_id = message.match(/[1-9]+/g)[0]
        name = message.match(/[A-z]+/g)[0]
        console.log(client_id)
        console.log(name)

        var callClient  = name + " ! " + "your turn is coming, please get ready and come to the restaurant in 5 mins"
        
        clients.forEach(function(user){

          if (parseInt(user.id) === parseInt(client_id)) {
            // user.connection.send(callClient)

            user.connection.send(callClient)
            console.log("client_id is  " + client_id)
            console.log("stored_id is " + user.id)
          }

        })

      } else {
      
      }
      
    });

  client.on("close", function() {
    console.log("client disconnected")

     clients.forEach(function(item){
        if (client === item.connection) {
            clients.splice(clients.indexOf(item), 1)
        }
    })

  });

});








