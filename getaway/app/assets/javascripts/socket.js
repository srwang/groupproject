var client = new WebSocket("ws://localhost:2000");
client.addEventListener("message", function(val){
    // $('body').append(val.data)
});
client.addEventListener('message', function(){
	client.send('hey')
})