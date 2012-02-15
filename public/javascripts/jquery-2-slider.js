//<![CDATA[
TTjquery(window).load(function() {
TTjquery('.home-banner-wrap ul').css("background-image", "none");
TTjquery('.jqslider').css("display", "block");
TTjquery('.big-banner #main .main-area').css("padding-top", "16px");
TTjquery('.home-banner-wrap ul').after('<div class="jquery-pager">&nbsp;</div>').cycle({
	fx: 'fade',
	timeout: 8000,
	height: 'auto',
	pause: 0,
	pager: '.jquery-pager',
	cleartypeNoBg: true

});
});
//]]>