<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<title>主页</title>
	<link rel="shortcut icon" type="image/x-icon"
		href="style/images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="style/type/classic.css"
		media="all" />
	<link rel="stylesheet" type="text/css" href="style/type/goudy.css"
		media="all" />
	<script type="text/javascript" src="style/js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="style/js/superfish.js"></script>
	<script type="text/javascript" src="style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="style/js/jquery.aw-showcase.js"></script>
	<script type="text/javascript" src="style/js/scripts.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#showcase").awShowcase({
				content_width : 960,
				content_height : 450,
				fit_to_parent : false,
				auto : true,
				interval : 3000,
				continuous : false,
				loading : true,
				tooltip_width : 200,
				tooltip_icon_width : 32,
				tooltip_icon_height : 32,
				tooltip_offsetx : 18,
				tooltip_offsety : 0,
				arrows : true,
				buttons : true,
				btn_numbers : true,
				keybord_keys : true,
				mousetrace : false, /* Trace x and y coordinates for the mouse */
				pauseonover : true,
				stoponclick : false,
				transition : 'fade', /* hslide/vslide/fade */
				transition_delay : 0,
				transition_speed : 500,
				show_caption : 'onload', /* onload/onhover/show */
				thumbnails : false,
				thumbnails_position : 'outside-last', /* outside-last/outside-first/inside-last/inside-first */
				thumbnails_direction : 'vertical', /* vertical/horizontal */
				thumbnails_slidex : 1, /* 0 = auto / 1 = slide one thumbnail / 2 = slide two thumbnails / etc. */
				dynamic_height : false, /* For dynamic height to work in webkit you need to set the width and height of images in the source. Usually works to only set the dimension of the first slide in the showcase. */
				speed_change : true, /* Set to true to prevent users from swithing more then one slide at once. */
				viewline : false, /* If set to true content_width, thumbnails, transition and dynamic_height will be disabled. As for dynamic height you need to set the width and height of images in the source. */
				custom_function : null
			/* Define a custom function that runs on content change */
			});
		});
	</script>
</head>
<body>
	<!-- Begin Header -->
	<!-- End Header -->
	<div class="clear"></div>
	<!--  原文 Header div 与 body div 都在 "body-wrapper" 内-->
	<!-- Begin Body Wrapper -->
	<div id="body-wrapper">
	
		<!-- Begin Slider -->
		<div id="showcase" class="showcase">

			<!-- Each child div in #showcase represents a slide -->
			<div class="showcase-slide">
				<!-- Put the slide content in a div with the class .showcase-content. -->
				<div class="showcase-content">
					<img src="style/images/art/s1.jpg" alt="01" />
				</div>
			</div>

			<!-- Each child div in #showcase represents a slide -->
			<div class="showcase-slide">
				<!-- Put the slide content in a div with the class .showcase-content. -->
				<div class="showcase-content">
					<img src="style/images/art/s2.jpg" alt="01" />
				</div>
				<div class="showcase-caption">Donec id elit non mi porta
					gravida at eget metus.</div>
			</div>

			<!-- Each child div in #showcase represents a slide -->
			<div class="showcase-slide">
				<!-- Put the slide content in a div with the class .showcase-content. -->
				<div class="showcase-content">
					<img src="style/images/art/s3.jpg" alt="01" />
				</div>
			</div>

			<!-- Each child div in #showcase represents a slide -->
			<div class="showcase-slide">
				<!-- Put the slide content in a div with the class .showcase-content. -->
				<div class="showcase-content">
					<img src="style/images/art/s4.jpg" alt="01" />
				</div>
			</div>
		</div>
		<!-- End Slider -->

		<!-- Begin Wrapper -->
		<div id="wrapper">
			<div class="intro"> Kissing the fire </div>
			<div class="two-third">
				<h3 class="line">介绍</h3>
				<img src="style/images/icon-1.png" alt="" class="left" />
				<h4>相册 ： 一刹的芳华</h4>
				<p>
					&nbsp;&nbsp;人在年轻的时候总会有些莫名的坚持，并且以此感动着自己， 却时常会在不经意间让真正重要的东西从指间流走。<br />
					<span style="float: right;">——烟雨江南</span>
				</p>


				<div class="clear"></div>
				<br /> <br /> <img src="style/images/icon-2.png" alt=""
					class="left" />
				<h4>记录： 生活的轨迹</h4>
				<p>
					生活————就要：<br />&nbsp;&nbsp;喜欢战斗和宴会，不愠怒，不白日做梦，欣然奔赴最艰巨的任务，如同赴宴，健康而强健。最优秀的属于我和我这类人；如果它不给予我们，那么我们就要攫取它：————最好的事物，最纯净的天空，最强大的思想，最美貌的女人！<br />
					<span style="float: right">————查拉图斯特拉</span>
				</p>
				<div class="clear"></div>
				<br /> <br /> <img src="style/images/icon-3.png" alt=""
					class="left" />
				<h4>所在地</h4>
				<p>
					&nbsp;&nbsp;北京 海淀
						<br/><span style="float:right;">故乡：新乡 原阳</span>
				</p>
				<div class="clear"></div>
			</div>
			<div class="one-third last">
				<h3 class="line">最近</h3>
				<ul class="latest-posts">
					<li><span class="date"><em class="day">22</em><em
							class="month">May</em></span>
						<h5>Lorem Fermentum Pharetra</h5>
						<p>
							Maecenas faucibus mollis interdum. Lorem ipsum… <a href="#"
								class="more">Continue Reading →</a>
						</p></li>
					<li><span class="date"><em class="day">14</em><em
							class="month">Jun</em></span>
						<h5>Sit Fringilla Vulputate Purus</h5>
						<p>
							Maecenas faucibus mollis interdum. Lorem ipsum… <a href="#"
								class="more">Continue Reading →</a>
						</p></li>
					<li><span class="date"><em class="day">18</em><em
							class="month">Aug</em></span>
						<h5>Sit Fringilla Vulputate Purus</h5>
						<p>
							Maecenas faucibus mollis interdum. Lorem ipsum… <a href="#"
								class="more">Continue Reading →</a>
						</p></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<!-- End Wrapper -->
		<div class="push"></div>
	</div>
	<!-- End Body Wrapper -->
	
	<!-- Begin Footer -->
	<!-- End Footer -->

</body>
</html>