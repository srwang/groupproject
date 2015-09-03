// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var orderString = "";



$("#ticket").on('click',function(){
	console.log("clicked")
	$('#content').html("<%= j (render 'ticket') %>");	
	$(".customer-ticket a").css("color","#cd7971");
	$(".customer-ticket").css('border-bottom', 'solid 2px #cd7971');
	$(".customer-order a").css("color","#C0C0C0");
	$(".customer-order").css('border-bottom', 'solid 2px #C0C0C0');
})


$("#order").on('click',function(){
	$('#content').html("<%= j (render 'order') %>");	
	$(".customer-order a").css("color","#cd7971");
	$(".customer-order").css('border-bottom', 'solid 2px #cd7971');
	$(".customer-ticket a").css("color","#C0C0C0");
	$(".customer-ticket").css('border-bottom', 'solid 2px #C0C0C0');
})

$('.submit').click(function(){
	var client = new WebSocket("ws://localhost:2000/");
//     var order = $(this).parent().find('.order').val();
    // var res_id = $(this).parent().find('#order_restaurant_id').val();
    client.addEventListener("open", function(val){
        client.send("You have an order from " + readCookie('user_name') + " admin id: " + readCookie('admin_id'))
    });
})

// restaurant

  
$("#queue").off().on('click',function(event){

	$('#content').empty().append("<%= j (render 'queue') %>");
	$("#queue a").css("color","#58759d")
	$(".restaurant-queue").css('border-bottom', 'solid 2px #58759d');
	$("#map a").css("color","#C0C0C0");
	$(".restaurant-map").css('border-bottom', 'solid 2px #C0C0C0');
	$("#menu a").css("color","#C0C0C0");
	$(".restaurant-menu").css('border-bottom', 'solid 2px #C0C0C0');

})


$('#map').off().on('click',function(event){
	
	$('#content').empty().append("<%= j (render 'map') %>")
	$("#map a").css("color","#58759d");
	$(".restaurant-map").css('border-bottom', 'solid 2px #58759d');
	$("#queue a").css("color","#C0C0C0");
	$(".restaurant-queue").css('border-bottom', 'solid 2px #C0C0C0');
	$("#menu a").css("color","#C0C0C0");
	$(".restaurant-menu").css('border-bottom', 'solid 2px #C0C0C0');
	
})


$('#menu').off().on('click',function(event){
	
	$('#content').empty().append("<%= j (render 'menu') %>")
	$("#menu a").css("color","#58759d");
	$(".restaurant-menu").css('border-bottom', 'solid 2px #58759d');
	$("#map a").css("color","#C0C0C0");
	$(".restaurant-map").css('border-bottom', 'solid 2px #C0C0C0');
	$("#queue a").css("color","#C0C0C0");
	$(".restaurant-queue").css('border-bottom', 'solid 2px #C0C0C0');
	
})

$('#next').click(function(){
	alert("hello!")
	thisId = this.value

	var client = new WebSocket("ws://localhost:2000/");

	client.addEventListener('open', function(){
		client.send(thisId)	
	})


})

$('document').off().on('click', '#next', function(){

	

	var $secondRow =  $("#queue-table tr").eq(1);
	//AJAX delete request
		$.ajax({
	    url: '/queues',
	    type: 'POST',
	    data: {'_method': 'delete'},
	    success: function(result) {
				$('#content').html("<%= j (render 'queue') %>");	
				$secondRow.css("background-color","#99EB99");
	         $secondRow.fadeOut(300,function() {
				$secondRow.remove();
				});
	    }
	});

	
});









