<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--banner-->
	<div class="banner">
		<!-- banner-text Slider starts Here -->
		<script src="js/responsiveslides.min.js"></script>
		<script>
			// You can also use "$(window).load(function() {"
				$(function () {
				// Slideshow 3
					$("#slider3").responsiveSlides({
					auto: true,
					pager:true,
					nav:true,
					speed: 500,
					namespace: "callbacks",
					before: function () {
					$('.events').append("<li>before event fired.</li>");
					},
					after: function () {
						$('.events').append("<li>after event fired.</li>");
					}
				});	
			});
		</script>
		<!--//End-slider-script -->
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<div class="banner1">
					</div>
				</li>
				<li>
					<div class="banner1 banner2">
					</div>
				</li>
				<li>
					<div class="banner1 banner3">
					</div>
				</li>
			</ul>
			<div class="clearfix"> </div>
		</div>
	</div>			
	<!--//banner-->
</body>
</html>