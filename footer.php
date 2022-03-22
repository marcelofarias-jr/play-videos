<!-- ***********************Rodapé -->
  	<footer>
  		<div class="logo">
  			<a href="http://localhost/play">
  					<?php 
  					$custom_logo_id = get_theme_mod( 'custom_logo' );
		            $logo = wp_get_attachment_image_src( $custom_logo_id, '' );

		            if ( has_custom_logo() ) {
		              echo '<img src="' . esc_url( $logo[0] ) . '" class="img-fluid">';
		            } else {
		              echo '<h1>' . get_bloginfo('name') . '</h1>';
		              echo '<p class="lead">' . get_bloginfo('description') . '</p>';
		            } ?>
  				</a>
  		</div>
		<p>© 2020 — Play — Todos os direitos reservados.</p>
  	</footer>
  </div>
	<script src="<?php bloginfo('template_directory'); ?>/assets/js/carousel-owl/jquery.min.js"></script>
    <script src="<?php bloginfo('template_directory'); ?>/assets/js/carousel-owl/owl.carousel.min.js"></script>
    <script src="<?php bloginfo('template_directory'); ?>/assets/js/carousel-owl/setup.js"></script>


</body>
</html>