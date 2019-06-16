getData('');
$(document).on('click','#product-type-menu li' ,function() {
	$("#data-render").html('')
	var type = $(this).attr('data-type');
	getData(type);
});
function getData(type){
	$.ajax({
		method : "GET",
		data:{
			type: type
		},
		url : "product/get"

	}).done(function(object) {
		var data = JSON.parse(object);
		for(var i = 0; i < data.length; i++){
			var prodData = data[i];
			var product = "<div class='col-md-4'>"+
             "<div class='card mb-4 box-shadow'>" +
                "<img class='card-img-top' src= 'images/"+prodData.image+"' alt='"+prodData.description+"'>"+
               " <div class='card-body'>"+
               "<p class='card-text'> "+prodData.title+" <br>"+prodData.price+" </p>"+
                 "<div class='d-flex justify-content-between align-items-center'>" +
                   " <div class='btn-group'>"+ 
                  "<a  class='btn btn-outline-info' href='product-details?product="+prodData.id+"'>View</a>"+
                  "<a class='btn btn-outline-danger'>Edit </a>"+
                 "<small class='text-muted'></small></div></div></div>"+
            "</div>";
		$("#data-render").append(product);
		}
	});
}
