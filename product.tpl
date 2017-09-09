<?php echo $header; ?>
	<div id="topmenu_bottom_navibar" class="breadcrumb">
		<?php foreach($breadcrumbs as $i=>$breadcrumb){ ?>
			<?php if($i+1<count($breadcrumbs)){ ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a> > <?php } else { ?><?php echo $breadcrumb['text']; ?><?php } ?>
		<?php } ?>
	</div>

	<div class="row">
		<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
			<div id="main_cart">
				<div id="main_cart_top">
					<div id="main_cart_top_left">
						<?php if ($thumb) { ?>
							<img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
						<?php } ?>
					</div>
					<div id="main_cart_top_right">
						<div id="main_cart_top_right_linkall"><a href="<?php echo $manufacturers; ?>">Все товары <?php echo $manufacturer; ?></a></div>
						<div id="main_cart_top_right_price"><?php echo $price; ?></div>
						<div id="main_cart_top_right_add">
						
						<div id="product">
							<div class="form-group">
								<input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
								<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
								<button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="inp_submit"><?php echo $button_cart; ?></button>
							</div>
							<?php if ($minimum > 1) { ?><div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div><?php } ?>
						</div>

						</div>
						<div id="main_cart_top_right_info">
							<p>Артикул:</span> <?php echo $sku; ?></p>
							<p><?php echo $text_model; ?> <?php echo $model; ?></p>
							<p><?php echo $text_stock; ?> <span><?php echo $stock; ?></span></p>
						</div>
					</div>
				</div>
				<!-- Main Cart Top -->
				<div id="main_cart_bottom">
					<?php if ($thumb || $images) { ?>
						<div id="main_cart_bottom_left">
							<ul class="thumbnails">
								<?php if ($images) { ?>
									<?php foreach ($images as $image) { ?>
										<li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"><span></span><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
									<?php } ?>
								<?php } ?>
							</ul>
						</div>
					<?php } ?>
					<div id="main_cart_bottom_right">
						<!-- AddThis Button BEGIN -->
						<div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
						<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
						<!-- AddThis Button END -->
					</div>
				</div>
				<!-- Main Cart Bottom -->
				<div class="clear"></div>
			</div>

			<div id="main_cart_info"><?php echo $description; ?></div>
			<!-- Main Cart Info -->

			<?php if ($products) { ?>
				<link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" type="text/css" rel="stylesheet" media="screen" />
				<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
				<div id="main_cart_other">
					<div id="main_mini_title"><h3>С этим также берут</h3></div>
					<div id="main_cart_other_list">
						<div id="main_cart_other_list_all">
							<div id="carousel_prod">
							<?php $i = 0; ?>
							<?php foreach ($products as $product) { ?>
								<div class="item text-center carousel_prod_cell">
									<div class="mcol_title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
									<div class="mcol_img"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></div>
									<div class="mcol_price"><?php echo $product['price']; ?></div>
									<div class="mcol_add">
										<button type="button" class="inp_submit" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
									</div>
								</div>
								<?php $i++; ?>
							<?php } ?>
							</div>
							<script type="text/javascript"><!--
							$('#carousel_prod').owlCarousel({
								items: 3,
								autoPlay: 3000,
								navigation: true,
								navigationText: ['<img src="/images/arrow_left.png" alt="" />', '<img src="/images/arrow_right.png" alt="" />'],
								pagination: false
							});
							--></script>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			<?php } ?>

			<div id="main_cart_reviews">
				<div id="main_cart_reviews_top">
					<a href="#" class="active" id="all_reviewst"><h3><?php echo $tab_review; ?></h3></a>
					<a href="#" id="add_reviewst"><h3>Оставить отзыв</h3></a>
				</div>
				<div id="main_cart_reviews_bottom">
					<div id="all_reviews" class="active">
						<div id="review"></div>
						<div id="review_read_all"><a href="#">Читать все</a></div>
					</div>
					<div id="all_reviews_add">
						<?php if ($review_status) { ?>
							<div class="tab-pane" id="tab-addreview">
								<form class="form-horizontal" id="form-review">
									<h2><?php echo $text_write; ?></h2>
									<?php if ($review_guest) { ?>
										<div class="form-group required">
											<div class="col-sm-12">
												<label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
												<input type="text" name="name" value="" id="input-name" class="form-control" />
											</div>
										</div>
										<div class="form-group required">
											<div class="col-sm-12">
												<label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
												<textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
												<div class="help-block"><?php echo $text_note; ?></div>
											</div>
										</div>
										<div class="form-group required">
											<div class="col-sm-12">
												<label class="control-label"><?php echo $entry_rating; ?></label>
												<div class="rating_block_radio">
													<?php echo $entry_bad; ?>
													&nbsp;<input type="radio" name="rating" value="1" />&nbsp;<input type="radio" name="rating" value="2" />&nbsp;<input type="radio" name="rating" value="3" />&nbsp;<input type="radio" name="rating" value="4" />&nbsp;<input type="radio" name="rating" value="5" />&nbsp;
													<?php echo $entry_good; ?>
												</div>
											</div>
										</div>
										<?php echo $captcha; ?>
										<div class="buttons clearfix">
											<div class="pull-right">
												<button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary inp_submit"><?php echo $button_continue; ?></button>
											</div>
										</div>
									<?php } else { ?>
										<?php echo $text_login; ?>
									<?php } ?>
								</form>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
			<!-- Main Cart Reviews -->
		</div>
	</div>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

				$.ajax({
					url: 'index.php',
					type: 'post',
					data: 'refresh_basket=true',
					success: function(dataParam) {
						$('#topbasket_block').remove();
						$('.to_basket_block').append(dataParam);
					},
					error: function() {
						alert('Неизвестаня ошибка');
					}
				});
				setTimeout(function(){$('.alert, .text-danger').animate({'opacity':0},500,function(){$(this).remove();});},2000);
				
				//$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();
    $('#review').fadeOut('slow');
    $('#review').load(this.href);
    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
				$('#all_reviews, #all_reviewst').addClass('active');
				$('#all_reviews_add, #add_reviewst').removeClass('active');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
				$('#all_reviews, #all_reviewst').addClass('active');
				$('#all_reviews_add, #add_reviewst').removeClass('active');
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>

<?php echo $column_right; ?>

<?php echo $footer; ?>
