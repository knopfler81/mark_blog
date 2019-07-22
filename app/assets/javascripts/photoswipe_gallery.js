var openGallery = Array.from(document.getElementsByClassName("link_to"));

openGallery.forEach(function(image){
	image.addEventListener('click', openPhotoSwipe);
})

 function openPhotoSwipe() {


    var index = openGallery.indexOf(this);

    var pswpElement = document.querySelectorAll('.pswp')[0];


    var pics =  Array.from(document.getElementsByClassName('small_image'));

    // build items array
    var items = []

    pics.forEach(function(e){items.push({src: e.src, w: 0, h: 0}); })
    
    // define options (if needed)
    var options = {
			 // history & focus options are disabled on CodePen 
        index: index,
      	history: false,
      	focus: false,
        showAnimationDuration: 0,
        hideAnimationDuration: 0,
        closeOnScroll: false,
        closeOnClick: false,
        
    };
    
    var gallery = new PhotoSwipe( pswpElement, PhotoSwipeUI_Default, items, options);
    
    gallery.listen('gettingData', function(index, item) {
      if (item.w < 1 || item.h < 1) { // unknown size
        var img = new Image(); 
        img.onload = function() { // will get size after load
	        item.w = this.width; // set image width
	        item.h = this.height; // set image height
	        gallery.invalidateCurrItems(); // reinit Items
	        gallery.updateSize(true); // reinit Items
       	}
        img.src = item.src; // let's download image
      }
    });

    gallery.init();

};
