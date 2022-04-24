<?php 
	// função para carregar scripts
		wp_enqueue_script( 'jquery', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js', array( 'jquery' ), '1.0.0', true );
		// wp_enqueue_script( 'script', get_template_directory_uri() . '/assets/js/script.js', array( 'JS' ), '1.0.0', true );

		wp_enqueue_style( 'template', get_template_directory_uri() . '/assets/css/style.css', array (), '1.0', 'all' );

	
	//chamando o title
	add_theme_support('title-tag');

	//função para registrar os menus
	register_nav_menus(
		array(
		'menu_principal' => 'Menu Principal',
		)
	);

	 // Adicionar o logotipo
	add_theme_support( 'custom-logo' );

	//Adicionando thumbnail
	add_theme_support('post-thumbnails');


	require get_template_directory() . '/custom_post_type/videos.php';


 ?>