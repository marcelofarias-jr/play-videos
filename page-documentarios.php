<?php get_header();?>
<div id="documentarios" class="row d-flex">
  <section class="col-md-6" id="texto">
    <h2>Documentários</h2>
    <p>Reprehenderit excepteur est velit id sunt in incididunt commodo aliquip in nisi fugiat ut aute minim dolor cillum
      sunt officia excepteur voluptate minim mollit culpa. Lorem ipsum dolor irure labore voluptate occaecat pariatur
      amet et labore eiusmod duis id elit consectetur fugiat nisi.Adipisicing nisi dolore culpa ullamco nulla veniam
      pariatur amet esse laborum non aliqua esse adipisicing nostrud est sed ad in cillum in fugiat labore et voluptate
      magna irure culpa excepteur aliquip. excepteur ut quis irure ut exercitation irure consectetur sed sunt minim.</p>
  </section>
  <section class="col-md-6 mr-auto" id="filmesLinks">
    <!-- Chamada WP Query -->
    <?php
               // array WP query
               $args = array(
                'post_type'         =>  'video',
                'posts_per_page'    => 1,
                'tax' => array(
                    array(
                        'taxonomy' => 'genero',
                        'field' => 'slug',
                        'terms' => 'documentarios',     
                    )
                )
               );
               $blog = new WP_Query($args);
               // chamada do loop
               if($blog->have_posts()):
                    while($blog->have_posts()):
                        $blog->the_post();
                ?>
    <div class="row mb-5">
      <?php get_template_part('content', 'documentarios'); ?>
    </div>
    <?php
                    endwhile;
                    wp_reset_postdata();
               endif;

               ?>
  </section>
</div>

<?php get_footer();?>