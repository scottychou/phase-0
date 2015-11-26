// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.
bodyElement = $('body');
bodyElement.css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
mascot = $('.mascot h1');
mascotImage = $('.mascot img');
bodyImage = $('body > img');
bodyh1Element = $('body > h1');
 

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
    bodyh1Element.css({'background-color': 'lavender'});
    bodyh1Element.css('border','1px solid black');
    bodyh1Element.css('visibility', 'visible');

    mascot.text('Island Foxes');

//RELEASE 4: Event Listener
  // Add the code for the event listener here
    mascotImage.on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://youtopia.land/wp-content/uploads/2015/08/Fox.jpg')
  
      })
    
    mascotImage.on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://devbootcamp.com/assets/img/devbootcamp-logo-new.png')
  })
     
	

//RELEASE 5: Experiment on your own

mascot.click(function() {
  $('img').attr('src', 'http://youtopia.land/wp-content/uploads/2015/08/Fox.jpg')

})

  bodyh1Element.click(function() {
   if(bodyImage.is(":hidden")) {
    	bodyImage.fadeIn("slow");
   }
  	
  })
  





  })  // end of the document.ready function: do not remove or write DOM manipulation below this.