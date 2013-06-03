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

<div id="content" class="grid col-940">
        
<h2>Featured Issues</h2>
<?php

?>

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

<script src="masonry.min.js"/>
<script>
$('#content').masonry({
  itemSelector: 'div.issue.card'
});
</script>

<?php // get_sidebar(); ?>
<?php get_footer(); ?>
