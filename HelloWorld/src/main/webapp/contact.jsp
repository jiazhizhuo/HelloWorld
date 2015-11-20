<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<title>留言板</title>
	<link rel="shortcut icon" type="image/x-icon" href="style/images/favicon.png" />
	<link rel="stylesheet" type="text/css" href="style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style/css/prettyPhoto.css"  />
	<link rel="stylesheet" type="text/css" href="style/type/classic.css" media="all" />
	<link rel="stylesheet" type="text/css" href="style/type/goudy.css" media="all" />
	<script type="text/javascript" src="style/js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="style/js/superfish.js"></script>
	<script type="text/javascript" src="style/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="style/js/scripts.js"></script>
</head>
<body>

<div id="body-wrapper"> 
  <!-- Begin Wrapper -->
  <div id="wrapper">
  
   <div class="intro">Phasellus vitae lectus sit amet ipsum fringilla viverra at et leo. Cras iaculis, sem vel venenatis sodales, elit dui elementum lorem, ut semper ligula ipsum at sapien.</div>
   
   <div class="frame"><iframe width="940" height="400" frameborder="0" style="border:0" allowfullscreen src="http://www.google.cn/maps/embed?pb=!1m23!1m12!1m3!1d48894.06424623524!2d116.31717269433662!3d40.01114993314349!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e0!4m0!4m5!1s0x35f0544a669db54d%3A0x4b3b375eac8c4859!2z5YyX5Lqs5biC5YyX5Lqs5rW35reA5Yy66YC45oiQ5Lic6IuROA!3m2!1d40.0144579!2d116.3496194!5e0!3m2!1szh-CN!2scn!4v1447746010152"></iframe></div>
  	<br />
  	<br />
  	<!-- Begin Blog -->
  	<div class="container">
  	<div class="content">
  	<h2 class="line">Get in Touch</h2>
  	<p>Cras vehicula, enim ac rutrum imperdiet, tellus nibh sodales magna, at mollis odio mi a urna. Aliquam augue augue, sodales eu condimentum a, scelerisque eget purus. Sed suscipit mattis.</p>
  	<br />
  	<br />
  	<br />
  	<!-- Begin Form -->
          <div class="form-container">
            <form class="forms" action="#" method="post">
              <fieldset>
                <ol>
                  <li class="form-row text-input-row">
                    <label>Name</label>
                    <input type="text" name="name" value="" class="text-input required" title="" />
                  </li>
                  <li class="form-row text-input-row">
                    <label>Email</label>
                    <input type="text" name="email" value="" class="text-input required email" title="" />
                  </li>
                  <li class="form-row text-area-row">
                    <label>Message</label>
                    <textarea name="message" class="text-area required"></textarea>
                  </li>
                  <li class="form-row hidden-row">
                    <input type="hidden" name="hidden" value="" />
                  </li>
                  <li class="button-row">
                    <input type="submit" value="Submit" name="submit" class="btn-submit" />
                  </li>
                </ol>
                <input type="hidden" name="v_error" id="v-error" value="Required" />
                <input type="hidden" name="v_email" id="v-email" value="Enter a valid email" />
              </fieldset>
            </form>
            <div class="response"></div>
          </div>
        <!-- End Form -->
    </div><!-- End Content -->
	</div> <!-- End Container -->
	
	<div class="sidebar">
	
		<div class="sidebox">
			<h3 class="line">Head Office</h3>
        <p>Lorem Ipsum Dolor Sit
          Moon Avenue No:11/21
          Planet City, Earth<br>
          <br>
          <span class="lite1">Fax:</span> +555 797 534 01<br>
          <span class="lite1">Tel:</span> +555 636 646 62<br>
          <span class="lite1">E-mail:</span> name@domain.com</p>
		</div>
	
		<div class="sidebox">
			<h3 class="line">Branch Office</h3>
        <p>Lorem Ipsum Dolor Sit
          Moon Avenue No:11/21
          Planet City, Earth<br>
          <br>
          <span class="lite1">Fax:</span> +555 797 534 01<br>
          <span class="lite1">Tel:</span> +555 636 646 62<br>
          <span class="lite1">E-mail:</span> name@domain.com</p>
		</div>
		
		
		
		
	</div>
    <div class="clear"></div>
    
  </div>
  <!-- End Wrapper -->
  
  <div class="push"></div>
</div>
<!-- End Body Wrapper -->

</body>
</html>