//<![CDATA[
TTjquery(window).load(function() {
  TTjquery('.home-bnr-jquery ul').css("background-image", "none");
  TTjquery('.jqslider').css("display", "block");
  TTjquery('.home-bnr-jquery ul').after('<div class="jquery-pager">&nbsp;</div>').cycle({
	  fx: 'fade',
	  timeout: 8000,
	  height: 'auto',
	  pause: 0,
	  pager: '.jquery-pager',
	  cleartypeNoBg: true

  });
});
//]]>