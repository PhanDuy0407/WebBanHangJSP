// Đảm bảo không thể để trống input[type=number]
var numInputs = document.querySelectorAll('input[type=number]')

numInputs.forEach((input) => {
  input.addEventListener('change', function(e) {
    if (e.target.value == '') {
      e.target.value = 1
    }
  })
})

// 
function increaseValue(element) {
  // Chú ý giữa Node vs Element?
  var parent_element = element.parentElement;
  var qty_element = parent_element.children[1]; 
  var value = parseInt(qty_element.value, 10);
  var max_value = parseInt(qty_element.max, 10);
  max_value = isNaN(max_value)? 99 : max_value;

  value = value === max_value ? value : value + 1;

  qty_element.value = value;
}

function decreaseValue(element) {
  var parent_element = element.parentElement;
  var qty_element = parent_element.children[1]; 
  var value = parseInt(qty_element.value, 10);
  var min_value = parseInt(qty_element.min, 10);
  min_value = isNaN(min_value)? 1 : min_value;

  value = value === min_value ? value : value - 1;
  qty_element.value = value;
}


function clickProduct(event) {
    console.log(event.target)
    var link = event.target.getAttribute("data-link");
    /*window.open(link);*/
  	window.location.href = link;
}

var elements = document.getElementsByClassName("product-item");
for(var i = 0; i < elements.length; ++i) {
  elements[i].addEventListener('click', (event) => {
    clickProduct(event);
  })
}


/* test */

function clickRowLink(event) {
  if(event.target.matches('.img-product-row')) {
    var link = event.target.dataset.link;
    window.open(link);
  }
}

window.onclick = function(event) {
  clickRowLink(event);
};

/* test */
function addToCart() {
		var id = document.getElementById("productID").value;
		var num = document.getElementById("number").value;
		var data = "action=Add+To+Cart&productID="+ id + "&number=" + num;
		
		var xhttp = new XMLHttpRequest();	
		xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		     
		    }
		  };
		xhttp.open("POST", "Cart", true);
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhttp.send(data);
}



