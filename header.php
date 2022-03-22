<!DOCTYPE html>
<html>
<head>
	<title>Play</title>
	<!-- chamada do css -->
	<?php wp_head() ?>

	<!-- adicionando body class -->
	<body <?php body_class( 'my-class' ); ?>>

	<!-- Owl Caroussel -->
	<!-- linkando os arquivos Owl Carousel 2 css -->
	<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/assets/css/carousel-owl/owl.carousel.min.css">
  <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/assets/css/carousel-owl/owl.theme.default.min.css">


	<!-- <script src="<?php bloginfo('template_directory'); ?>/assets/js/jquery.min.js"></script>
	<script src="<?php bloginfo('template_directory'); ?>/assets/js/owl.carousel.js"></script>
	<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/assets/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/assets/js/script.js"> -->
	
	<!-- Adicionando Favicon -->
	<link rel="shortcut icon" href="/assets/img/favicon-32x32.png"/>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<!-- FA -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

	<!-- Responsivo -->
	<meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
	<!-- Font - Hind -->
	<link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
	<!-- Font Oswald -->
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">

<!-- Caroussel --> 
<!-- Jquery -->
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</head>
<body>
  <div class="">
  	<!-- *********************Nav -->
  	<header class="clearfix">
  		<nav class="navbar navbar-expand-lg">
  			<div id="logo">
  				<a href="http://localhost/play">
  					<?php 
  					$custom_logo_id = get_theme_mod( 'custom_logo' );
		            $logo = wp_get_attachment_image_src( $custom_logo_id, $size='140x50');

		            if ( has_custom_logo() ) {
		              echo '<img src="' . esc_url( $logo[0] ) . '" class="img-fluid"  >';
		            } else {
		              echo '<h1>' . get_bloginfo('name') . '</h1>';
		              echo '<p class="lead">' . get_bloginfo('description') . '</p>';
		            } ?>
  				</a>
  			</div>
		  	<div class="collapse navbar-collapse">
		    	<ul class="navbar-nav ml-auto">
		    		<?php wp_nav_menu(Array('theme_location')); ?>
		    	</ul>
		 	 </div>
		</nav>
  	</header>