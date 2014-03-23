// Mobile navigation toggle
$(document).ready(function() {
	var primary_nav = $('#primary-nav');
	var nav_toggle = $('#mobile-nav-toggle');

	nav_toggle.click(function(){
		primary_nav.toggleClass('is-open is-closed');
	});
});
