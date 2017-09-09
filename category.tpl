<?php echo $header; ?>
	<div id="topmenu_bottom_navibar" class="breadcrumb">
		<?php foreach($breadcrumbs as $i=>$breadcrumb){ ?>
			<?php if($i+1<count($breadcrumbs)){ ?><a href="<?php echo $breadcrumb['href']; ?>">Домой</a> > <?php } else { ?><?php echo $breadcrumb['text']; ?><?php } ?>
		<?php } ?>
	</div>

	<div class="row">
		<div id="content" class="<?php echo $class; ?>">
			<?php echo $content_top; ?>
			<?php foreach($products as $product){ ?>
			<div class="cart_cell">
				<div class="cart_cell_title"><h2><?php echo $product['name']; ?></h2></div>
				<div class="cart_cell_left">
					<div class="cart_cell_left_big"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a></div>
					<div class="cart_cell_left_biglink"><div class="thumbnails"><a href="<?php echo $product['thumb']; ?>" class="thumbnail">увеличить фото</a></div></div>
					<div class="cart_cell_left_price"><?php echo $product['price']; ?></div>
					<div class="cart_cell_left_oneclick"><a href="/" class="inp_submit">Купить в 1 клик</a></div>
					<div class="cart_cell_left_bottominfo">Есть на складе (по состоянию на 06.01.2016)</div>
				</div>
				<!-- Cart Cell Left -->
				<div class="cart_cell_right">
					<div class="cart_cell_right_info">
						<p><?php echo $product['description']; ?></p>
					</div>
					<div class="cart_cell_right_bottom">
						<a href="<?php echo $product['href']; ?>">Подробнее</a>
						<div class="cart_cell_right_add"><input type="submit" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" value="В корзину" class="inp_submit" /></div>
					</div>
				</div>
				<!-- Cart Cell Right -->
				<div class="clear"></div>
			</div>
			<!-- Cart Cell -->
			<?php } ?>
		</div>
	</div>
<?php echo $column_right; ?>

<?php echo $footer; ?>