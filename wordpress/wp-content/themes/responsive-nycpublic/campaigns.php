<?php

// Exit if accessed directly
if ( !defined('ABSPATH')) exit;

/**
 * Template Name: Campaigns List
 *
 *
 * @file           campaigns.php
 * @package        Responsive - NYCPublic
 * @author         Aaron Harnly
 * @filesource     wp-content/themes/responsive/page.php
 */

get_header(); ?>

<div id="content" class="grid col-940">
        
<h2>Find a Campaign</h2>
<?php
$params = array(
	'limit' => 25,
	'orderby' => 'name ASC'
);
$campaigns = pods('campaigns', $params);
echo $campaigns->template('campaign_card');
?>

</div><!-- end of #content -->

<?php // get_sidebar(); ?>
<?php get_footer(); ?>
