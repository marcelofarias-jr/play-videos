<?php get_header();?>
<div id="filmes" class="row d-flex">
	<section class="col-md-6" id="texto">
		<h2>Filmes</h2>
		<p>Reprehenderit excepteur est velit id sunt in incididunt commodo aliquip in nisi fugiat ut aute minim dolor cillum sunt officia excepteur voluptate minim mollit culpa. Lorem ipsum dolor irure labore voluptate occaecat pariatur amet et labore eiusmod duis id elit consectetur fugiat nisi excepteur ut quis irure ut exercitation irure consectetur sed sunt minim.</p>
	</section>
	<section class="col-md-6" id="filmesLinks">
		<?php get_template_part('content', 'filmes'); ?>
	</section>
</div>

<?php get_footer();?>