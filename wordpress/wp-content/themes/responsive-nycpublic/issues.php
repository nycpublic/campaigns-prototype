<?php

// Exit if accessed directly
if ( !defined('ABSPATH')) exit;

/**
 * Template Name: Issues List
 *
 *
 * @file           issues.php
 * @package        Responsive - NYCPublic
 * @author         Aaron Harnly
 * @filesource     wp-content/themes/responsive/page.php
 */

get_header(); ?>

<div id="content" class="<?php echo implode( ' ', responsive_get_content_classes() ); ?>">
        
<h2>Featured</h2>
<?php

?>

<h2>All Issues</h2>
<?php

$params = array(
	'limit' => 50,
	'orderby' => 'name ASC'
);
$issues = pods('issues', $params);
echo $issues->template('issue_card');

?>

<div class="clear"></div>
      
</div><!-- end of #content -->

<?php // get_sidebar(); ?>
<?php get_footer(); ?>
