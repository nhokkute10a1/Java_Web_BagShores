<%@page import="Entities.Taikhoanadmin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0053)http://bootsnipp-env.elasticbeanstalk.com/iframe/dPKk -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="robots" content="noindex">

<title>Full Page Sign In - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<style type="text/css">
body {
	background:
		url('http://farm3.staticflickr.com/2832/12303719364_c25cecdc28_b.jpg')
		fixed;
	background-size: cover;
	padding: 0;
	margin: 0;
}

.wrap {
	width: 100%;
	height: 100%;
	min-height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 99;
}

p.form-title {
	font-family: 'Open Sans', sans-serif;
	font-size: 20px;
	font-weight: 600;
	text-align: center;
	color: #FFFFFF;
	margin-top: 5%;
	text-transform: uppercase;
	letter-spacing: 4px;
}

form {
	width: 250px;
	margin: 0 auto;
}

form.login input[type="text"], form.login input[type="password"] {
	width: 100%;
	margin: 0;
	padding: 5px 10px;
	background: 0;
	border: 0;
	border-bottom: 1px solid #FFFFFF;
	outline: 0;
	font-style: italic;
	font-size: 12px;
	font-weight: 400;
	letter-spacing: 1px;
	margin-bottom: 5px;
	color: #FFFFFF;
	outline: 0;
}

form.login input[type="submit"] {
	width: 100%;
	font-size: 14px;
	text-transform: uppercase;
	font-weight: 500;
	margin-top: 16px;
	outline: 0;
	cursor: pointer;
	letter-spacing: 1px;
}

form.login input[type="submit"]:hover {
	transition: background-color 0.5s ease;
}

form.login .remember-forgot {
	float: left;
	width: 100%;
	margin: 10px 0 0 0;
}

form.login .forgot-pass-content {
	min-height: 20px;
	margin-top: 10px;
	margin-bottom: 10px;
}

form.login label, form.login a {
	font-size: 12px;
	font-weight: 400;
	color: #FFFFFF;
}

form.login a {
	transition: color 0.5s ease;
}

form.login a:hover {
	color: #2ecc71;
}

.pr-wrap {
	width: 100%;
	height: 100%;
	min-height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 999;
	display: none;
}

.show-pass-reset {
	display: block !important;
}

.pass-reset {
	margin: 0 auto;
	width: 250px;
	position: relative;
	margin-top: 22%;
	z-index: 999;
	background: #FFFFFF;
	padding: 20px 15px;
}

.pass-reset label {
	font-size: 12px;
	font-weight: 400;
	margin-bottom: 15px;
}

.pass-reset input[type="email"] {
	width: 100%;
	margin: 5px 0 0 0;
	padding: 5px 10px;
	background: 0;
	border: 0;
	border-bottom: 1px solid #000000;
	outline: 0;
	font-style: italic;
	font-size: 12px;
	font-weight: 400;
	letter-spacing: 1px;
	margin-bottom: 5px;
	color: #000000;
	outline: 0;
}

.pass-reset input[type="submit"] {
	width: 100%;
	border: 0;
	font-size: 14px;
	text-transform: uppercase;
	font-weight: 500;
	margin-top: 10px;
	outline: 0;
	cursor: pointer;
	letter-spacing: 1px;
}

.pass-reset input[type="submit"]:hover {
	transition: background-color 0.5s ease;
}

.posted-by {
	position: absolute;
	bottom: 26px;
	margin: 0 auto;
	color: #FFF;
	background-color: rgba(0, 0, 0, 0.66);
	padding: 10px;
	left: 45%;
}
</style>
<script src="./jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	try {
		window.AG_onLoad = function(func) {
			if (window.addEventListener) {
				window.addEventListener('DOMContentLoaded', func);
			}
		};
		window.AG_removeElementById = function(id) {
			var element = document.getElementById(id);
			if (element && element.parentNode) {
				element.parentNode.removeChild(element);
			}
		};
		window.AG_removeElementBySelector = function(selector) {
			if (!document.querySelectorAll) {
				return;
			}
			var nodes = document.querySelectorAll(selector);
			if (nodes) {
				for (var i = 0; i < nodes.length; i++) {
					if (nodes[i] && nodes[i].parentNode) {
						nodes[i].parentNode.removeChild(nodes[i]);
					}
				}
			}
		};
		window.AG_each = function(selector, fn) {
			if (!document.querySelectorAll)
				return;
			var elements = document.querySelectorAll(selector);
			for (var i = 0; i < elements.length; i++) {
				fn(elements[i]);
			}
			;
		};
		var AG_removeParent = function(el, fn) {
			while (el && el.parentNode) {
				if (fn(el)) {
					el.parentNode.removeChild(el);
					return;
				}
				el = el.parentNode;
			}
		};
		var AG_onLoad = function(func) {
			if (document.readyState === "complete"
					|| document.readyState === "interactive")
				func();
			else if (document.addEventListener)
				document.addEventListener("DOMContentLoaded", func);
			else if (document.attachEvent)
				document.attachEvent("DOMContentLoaded", func)
		};
		var AG_removeElementById = function(id) {
			var element = document.getElementById(id);
			if (element && element.parentNode) {
				element.parentNode.removeChild(element);
			}
		};
		var AG_removeElementBySelector = function(selector) {
			if (!document.querySelectorAll) {
				return;
			}
			var nodes = document.querySelectorAll(selector);
			if (nodes) {
				for (var i = 0; i < nodes.length; i++) {
					if (nodes[i] && nodes[i].parentNode) {
						nodes[i].parentNode.removeChild(nodes[i]);
					}
				}
			}
		};
		var AG_each = function(selector, fn) {
			if (!document.querySelectorAll)
				return;
			var elements = document.querySelectorAll(selector);
			for (var i = 0; i < elements.length; i++) {
				fn(elements[i]);
			}
			;
		};
	} catch (ex) {
		console.error('Error executing AG js: ' + ex);
	}
</script>
<script src="./bootstrap.min.js.tải xuống"></script>
<script type="text/javascript">
	window.alert = function() {
	};
	var defaultCSS = document.getElementById('bootstrap-css');
	function changeCSS(css) {
		if (css)
			$('head > link')
					.filter(':first')
					.replaceWith(
							'<link rel="stylesheet" href="'+ css +'" type="text/css" />');
		else
			$('head > link').filter(':first').replaceWith(defaultCSS);
	}
	$(document).ready(function() {
		var iframe_height = parseInt($('html').height());
		window.parent.postMessage(iframe_height, 'http://bootsnipp.com');
	});
</script>
</head>
<body>
	<%
		String err = "";
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
	%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="pr-wrap"></div>
				<div class="wrap">
					<p class="form-title">ĐĂNG NHẬP ADMIN</p>
					<form class="login" action="AdminServlet" method="post">
						<p style="color: red;"><%=err%></p>
						<input type="text" placeholder="Tài khoản" name="taikhoan">
						<input type="password" placeholder="Mật khẩu" name="matkhau">
						<input type="submit" value="ĐĂNG NHẬP" class="btn btn-success">

						<div class="remember-forgot">
							<div class="row">
								<div class="col-md-6">
									<div class="checkbox">
										<label> <input type="checkbox"> Remember Me
										</label>
									</div>
								</div>
								<div class="col-md-6 forgot-pass-content">
									<a href="javascription:void(0)" class="forgot-pass">Forgot
										Password</a>
								</div>
							</div>
						</div>
					</form>
					<!-- aâ -->
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.forgot-pass').click(function(event) {
				$(".pr-wrap").toggleClass("show-pass-reset");
			});

			$('.pass-reset-submit').click(function(event) {
				$(".pr-wrap").removeClass("show-pass-reset");
			});
		});
	</script>


</body>
</html>