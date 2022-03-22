<?php get_header();?>
  	<!-- *********************Banner -->
  	<section id="banner">
  		<div>
  			<span class="tag">Filmes</span>
  			<span class="duracao">130m</span>
  		</div>
  		<div class="titulo">
  			<h1>Pliquip nostrud laboris cupidatat</h1>
  			<button class="btn">Mais informações</button>
  		</div>
  	</section>
	<!-- *********************Filmes -->
    <div class="row">
          <div class="large-12 columns">
            <div class="owl-carousel owl-theme" id="owl-example">
                <div class="item">
                  <img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-gabriel-hohol-3593922.jpg">
                </div>
                <div class="item">
                  <img src="img/pexels-andrea-piacquadio-3760259.jpg">
                </div>
                <div class="item">
                  <img src="img/pexels-burak-k-1253049.jpg">
                </div>
                <div class="item">
                  <img src="img/pexels-chris-peeters-12801.jpg">
                </div>
                <div class="item">
                  <img src="img/pexels-francesco-ungaro-1525041.jpg">
                </div>
                <div class="item">
                  <img src="img/pexels-maxime-francis-2246476.jpg">
                </div>
                <div class="item">
                  <img src="img/pexels-steve-682375.jpg">
                </div>       
            </div>
          </div>
        </div>
  	<section id="filmes" class="sessão">
  		<h2>Filmes</h2>
  		<div class="d-flex">
  			<div class="filmesItem">
  				<img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-gabriel-hohol-3593922.jpg" class="img-fluid">
  				<span class="duracao"><?php echo get_post_meta(the_ID(), 'duracao', 'true'); ?>m</span>
  				<h3>In anim reprehenderit.</h3>
  			</div>
  			<div class="filmesItem">
  				<img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-ivy-son-3490257.jpg" class="img-fluid">
  				<span class="duracao">130m</span>
  				<h3>In anim reprehenderit.</h3>
  			</div>
  			<div class="filmesItem">
  				<img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-dazzle-jam-1190208.jpg" class="img-fluid">
  				<span class="duracao">130m</span>
  				<h3>In anim reprehenderit.</h3>
  			</div>
  			<div class="filmesItem">
  				<img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-pixabay-277253.jpg" class="img-fluid">
  				<span class="duracao">130m</span>
  				<h3>In anim reprehenderit.</h3>
  			</div>
  			<div class="filmesItem">
  				<img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-pixabay-2346.jpg" class="img-fluid">
  				<span class="duracao">130m</span>
  				<h3>In anim reprehenderit.</h3>
  			</div>
  			<div class="filmesItem">
  				<img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-francesco-ungaro-1525041.jpg" class="img-fluid">
  				<span class="duracao">130m</span>
  				<h3>In anim reprehenderit.</h3>
  			</div>
  		</div>
  	</section>
<!-- *********************Documentários -->
  	<section id="documentario" class="sessão">
  		<h2>Documentários</h2>
  		<div class="d-flex">
  			<div class="filmesItem">
  				<img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-gabriel-hohol-3593922.jpg" class="img-fluid">
  			</div>
  		</div>
  	</section>
<!-- *********************Series -->
  	<section id="documentario" class="sessão">
  		<h2>Séries</h2>
  		<div class="d-flex">
  			<div class="filmesItem">
  				<img src="<?php bloginfo('template_directory'); ?>/assets/img/pexels-gabriel-hohol-3593922.jpg" class="img-fluid">
  			</div>
  		</div>
  	</section>
<?php get_footer();?>