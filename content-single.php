<article>
	<section id="video-header">
		<div>
  			<span class="tag">Filmes</span>

  			<span class="duracao"><?php echo get_post_meta(the_ID(), 'duracao', 'true'); ?>m</span>
  			<h1 id="video-title"><?php the_title();?></h1>
  			
  			</div>
  		</div>
	</section>
	<section id="video-player">
		<div id="player">
 			<div>
 				<iframe id="ytplayer" type="text/html" width="1150" height="500"
					src="https://www.youtube.com/embed/huIW_EEzFW8"
					frameborder="0" allowfullscreen>
				</iframe>		
			</div>
  		</div>		
	</section>
	<section id="video-sinopse">
		<p>Anim irure magna anim est ut quis veniam commodo anim nulla consequat veniam ut minim id commodo ut sunt excepteur sed consectetur sint laborum. Ea sunt dolore voluptate est labore mollit nostrud culpa duis irure mollit dolor in commodo anim mollit incididunt aliquip nostrud mollit anim eiusmod commodo proident sit esse proident sit sint sed reprehenderit veniam sunt sed tempor id labore ea officia ullamco eiusmod eu elit pariatur velit officia reprehenderit nulla in in et cillum laboris excepteur sed laboris veniam non nisi est reprehenderit aliqua dolore minim aliqua elit tempor sunt laboris.</p>
	</section>
</article>