//$("p").hover(function(){
//    $(this).css("background-color", "yellow");
//    }, function(){
//    $(this).css("background-color", "pink");
//  });
  
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
//set provincia dependiendo la localidad
function setProv(){
	let localidad = document.getElementById("localidad").value;
}

function visible(){
	
}

$( "#credit" ).click(function() {
  $( ".datosTarjeta" ).show( "slow", function() {
    // Animation complete.
  });
  $( ".datosOperacion" ).hide( "slow", function() {
    // Animation complete.
  });
});
$( "#debit" ).click(function() {
  $( ".datosOperacion" ).show( "slow", function() {
    // Animation complete.
  });
  $( ".datosTarjeta" ).hide( "slow", function() {
    // Animation complete.
  });
});
$( "#cash" ).click(function() {
  $( ".datosOperacion" ).hide( "slow", function() {
    // Animation complete.
  });
  $( ".datosTarjeta" ).hide( "slow", function() {
    // Animation complete.
  });
});
