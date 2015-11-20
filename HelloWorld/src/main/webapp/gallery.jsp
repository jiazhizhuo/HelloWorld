<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<title>图册</title>
	<link rel="shortcut icon" type="image/x-icon" href="style/images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style/css/prettyPhoto.css"  />
	<link rel="stylesheet" type="text/css" href="style/type/classic.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style/type/goudy.css" media="all" />
	<script type="text/javascript" src="style/js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="style/js/superfish.js"></script>
	<script type="text/javascript" src="style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="style/js/jquery.masonry.min.js"></script> 
	<script type="text/javascript" src="style/js/scripts.js"></script>
	<script type="text/javascript">
	
	</script>
	<script type="text/javascript">
	$(document).ready(function() {
		
	      var 
	        speed = 1000,   // animation speed
	        $wall = $('#portfolio .items'),
	
	        masonryOptions = {         // initial masonry options
	
	          itemSelector: '.box:not(.invis)',
	          animate: true,
	          animationOptions: {
	            duration: speed,
	            queue: false
	          }
	        };
			
			$wall.imagesLoaded(function(){
				
				$wall.masonry(masonryOptions);
				
				// Create array of filters from link href
				var arrFilter = [];
				$('#filtering-nav a').each(function(){
					fhash = $(this).attr('href').replace('#','');
					if(fhash != 'all'){
						arrFilter.push(fhash);
					}
				});
				
				//  Get the parameter value after the # symbol
				var url=document.URL.split('#')[1];
				if(url == undefined){
					url = 'all';
				}
				$('#filtering-nav a.'+url).parent().addClass('active');
				
				if(jQuery.inArray(url, arrFilter) > '-1'){
					// set masonry options animate to false
					masonryOptions.animate = false;
					// hide boxes that don't match the filter class
					$wall.children().not('.'+url).toggleClass('invis').hide();
				}
			//	imageSetCss($(".box"));
				// run masonry again
				$wall.masonry(masonryOptions);
			//	imageFadeIn($(".box"));
			$wall.animate({opacity: 1},1000);
				
			});
			
			$('#filtering-nav a').click(function(e){
				var color = $(this).attr('class');
				filterClass = '.' + color;
				$('#filtering-nav li').removeClass('active');
				$(this).parent().addClass('active');
				
				if(filterClass=='.all') {
				  // show all hidden boxes
				  $wall.children('.invis').toggleClass('invis').fadeIn(speed);
				} else {
				  // hide visible boxes 
				  $wall.children().not(filterClass).not('.invis').toggleClass('invis').fadeOut(speed);
				  // show hidden boxes
				  $wall.children(filterClass+'.invis').toggleClass('invis').fadeIn(speed);
				}
				$wall.masonry({animate: true});
				// set hash in URL
				location.hash = color;
				e.preventDefault();
			});
	});
	$.fn.imagesLoaded = function(a) {
		var 
		b=this.find("img"),
		c=[],
		d=this,
		e=b.length;
		
		if(!b.length){
			a.call(this);
			return this
		}
		b.one("load error",function(){
			--e===0&&(e=b.length,b.one("load error",function(){
				--e===0&&a.call(d)}).each(function(){
					this.src=c.shift()
				})
			)}
		).each(function(){
			c.push(this.src),this.src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw=="
		});
		return this
	};
	  </script>
</head>
<body>
<div id="body-wrapper"> 

  <!-- Begin Wrapper -->
  <div id="wrapper">
  
  <div class="intro">Phasellus vitae lectus sit amet ipsum fringilla viverra at et leo. Cras iaculis, sem vel venenatis sodales, elit dui elementum lorem, ut semper ligula ipsum at sapien.</div>
  
  	<!-- Begin Portfolio -->
      <div id="portfolio">
        
        <div class="clear"></div>
        <div class="items">
          <div class="box col5"><a href="style/images/art/post1.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m1.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m2.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m2.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m3.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m3.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m4.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m4.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m5.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m5.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m6.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m6.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m7.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m7.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m8.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m8.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m9.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m9.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m10.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m10.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m11.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m11.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m12.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m12.jpg" alt="" /></a></div>
		  <div class="box col5"><a href="style/images/art/m13.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m13.jpg" alt="" /></a></div>
		  <div class="box col5"><a href="style/images/art/m14.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m14.jpg" alt="" /></a></div>
		  <div class="box col5"><a href="style/images/art/m15.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m15.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m16.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m16.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m17.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m17.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m18.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m18.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m19.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m19.jpg" alt="" /></a></div>
          <div class="box col5"><a href="style/images/art/m20.jpg" rel="prettyPhoto[gallery]" title="Caption of the image"><span class="overlay zoom"></span><img src="style/images/art/m20.jpg" alt="" /></a></div>
        </div>
        <!-- .wrap --> 
    </div>
    <!-- End Portfolio -->
    
  </div>
  <!-- End Wrapper -->
  
  <div class="push"></div>
</div>
<!-- End Body Wrapper -->

</body>
</html>