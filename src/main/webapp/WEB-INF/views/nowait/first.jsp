<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nowait</title>
<style>
body {
	background:#000000;
}
.mainlogo{
	position : absolute;
	left : 730px;
	top : 160px;
}
.waiting{
	position : absolute;
	left : 270px;
	top : 460px;
}
.restaurant{
	position : absolute;
	left : 730px;
	top : 460px;
}
.timesale{
	position : absolute;
	left : 1190px;
	top : 460px;
}
.a img {
  transition: all 0.2s linear;
}
.a:hover img {
  transform: scale(1.4);
}
.a {
  width: 400px;
  margin: 0px auto;
  overflow: hidden;
}
img {
        max-width: 100%;
      }
</style>
</head>
<body>
<div class="a">
<a href="/first" target="_self">
<img class="mainlogo" src="${path}/resources/images/logo.png" width="400" height="250">
</a>
</div>
<div class="a">
<a href="/rev" target="_self">
<img class="waiting" src="${path}/resources/images/logo/waiting.png" width="400" height="250">
</a>
</div>
<div class="a">
<a href="/recommend" target="_self">
<img class="restaurant" src="${path}/resources/images/logo/restaurant.png" width="400" height="250">
</a>
</div>
<div class="a">
<a href="/sale" target="_self">
<img class="timesale" src="${path}/resources/images/logo/timesale.png" width="400" height="250">
</a>
</div>

</body>
</html>