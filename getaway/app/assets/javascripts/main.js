

$(document).ready(function() {
	$(document).on('click','#view',function(){
		$("#modal").toggle();
		var customerID = $(this).val();
		console.log(customerID);
		console.log("hello");	
	});

	$(document).on('click',".modal-close",function(){
		$("#modal").toggle();
		console.log("hello")
	});
	
})

$(document).on('click','#next',function(){
	var $secondRow =  $("#queue-table tr").eq(1);
	
	$.ajax({
    url: '/queues',
    type: 'POST',
    data: {'_method': 'delete'},
    success: function(result) {
    	  $secondRow.css("background-color","#99EB99");
        $secondRow.fadeOut(300,function() {
					$secondRow.remove();
			});
    }
});





// console.log("hello");

});




