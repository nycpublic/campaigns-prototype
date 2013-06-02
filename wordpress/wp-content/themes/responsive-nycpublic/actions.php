<?php

// Exit if accessed directly
if ( !defined('ABSPATH')) exit;

/**
 * Template Name: Actions List
 *
 *
 * @file           actions.php
 * @package        Responsive - NYCPublic
 * @author         Aaron Harnly
 * @filesource     wp-content/themes/responsive/page.php
 */

get_header(); ?>

<div id="content" class="<?php echo implode( ' ', responsive_get_content_classes() ); ?>">
        
<h2>Popular Campaigns</h2>
<?php

?>

<h2>Ending Soon</h2>
      
</div><!-- end of #content -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>
