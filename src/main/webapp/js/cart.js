getData();
function getData(){
	$.ajax({
		  method: "GET",
		  url: "cart/get"
		}).done(function( object ) {
			var data= JSON.parse(object);
			for(var i =0; i<data.length;i++){
				var prodData = data[i];
				/*var dataProductHtml = "<div class='item'>"+
      "<div class='buttons'> <span id='delete-button' class='delete-btn'></span>"+
        "<span class='like-btn'></span></div>"+
      "<div class='image'><img style='width:100px;' src='images/"+prodData.image+"'/>"+
      "</div><div class='description'>"+
        "<span>"+prodData.title+"</span></div><div class='quantity'>"+
        "<button class='plus-btn' type='button' name='button'>"+
         "<img src='icon/plus.svg' /></button><input type='text'price='"+prodData.price+"' class='quatity'  value='1'>"+
        "<button class='minus-btn' type='button' name='button'>"+
          "<img src='icon/minus.svg' /></button></div>"+
          "<div class='total-price'>"+prodData.price+"$</div></div>";*/
				var dataProductHtml = "<div class='item'>"+
		        "<div class='buttons'> <span class='delete-btn'></span>"+
		          "<span class='like-btn'></span></div>"+
		        "<div class='image'><img style='width:100px;' src='images/"+prodData.image+"'/>"+
		        "</div><div class='description'>"+
		          "<span>"+prodData.title+"</span></div><div class='quantity'>"+
		          "<button class='plus-btn' type='button' name='button'>"+
		           "<img src='icon/plus.svg' /></button><input type='text' price='"+prodData.price+"' class='quatity' value='1'>"+
		          "<button class='minus-btn' type='button' name='button'>"+
		            "<img src='icon/minus.svg' /></button></div>"+
		            "<div class='total-price'>"+prodData.price+"$</div></div>";
				$("#cart-render").append(dataProductHtml);
				$( ".quatity" ).change(function() {
					var items = $( "#cart-render .item" );
					var sum = 0;
					for(var i = 0;i<items.length;i++){
						var item = $(items[i]).find('.quatity')
						sum += $(item).val()*$(item).attr('price');
					}
					$('#total').html(sum)
				});
			}
	});
};

