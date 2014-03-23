// Only load disqus embed code on blog post pages
if($("article").hasClass("single")) {

	// Disqus embed code from http://sharktanklabs.disqus.com/admin/universalcode/
	var disqus_shortname = 'sharktanklabs';

	(function() {
		var dsq = document.createElement('script');
		dsq.type = 'text/javascript';
		dsq.async = true;
		dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		(document.getElementsByTagName('body')[0]).appendChild(dsq);
	})();
}
