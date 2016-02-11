

<div id="search">
	<form action="index.php" method="get">
		<input type="hidden" name="route" value="product/search">

		<input name="search" type="text" value="<?php echo $search; ?>"/>
		<button type="submit"></button>
	</form>
</div>


<script>
		$('#search')
		.focusin(function(e) {
			var td_w = $(this).parent().width();
			var inp = $(this).find('input[type=text]');
			
			if (!$(this).hasClass('focus'))
				e.preventDefault();
			
			$(this).addClass('focus');
			inp.attr('standart-width', inp.width()).width(td_w-40);
		})
		.focusout(function(e) {
			var inp = $(this).find('input[type=text]');
			
			$(this).removeClass('focus');
			inp.width(inp.attr('standart-width'));
		});
</script>