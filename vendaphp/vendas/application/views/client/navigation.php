<div class="sidebar-background">
	<div class="primary-sidebar-background">
	</div>
</div>
<div class="primary-sidebar">
	<!-- Main nav -->
    <br />
    <div style="text-align:center;">
    	
        <a href="<?php echo base_url();?>">
        	<img src="<?php echo base_url();?>uploads/logo.png"  style="max-height:100px; max-width:100px;"/>
        </a>
        
    </div>
   	<br />
	<ul class="nav nav-collapse collapse nav-collapse-primary">
    
        
        <!------dashboard----->
		<li class="<?php if($page_name == 'dashboard')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?client/dashboard" rel="tooltip" data-placement="right" 
                	data-original-title="<?php echo get_phrase('dashboard_help');?>">
					<!--<i class="icon-desktop icon-1x"></i>-->
                    <img src="<?php echo base_url();?>template/images/icons/dashboard.png" />
					<span><?php echo get_phrase('dashboard');?></span>
				</a>
		</li>
        

		<!------client----->
		<li class="<?php if($page_name == 'product')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?client/product" rel="tooltip" data-placement="right" 
					data-original-title="<?php echo get_phrase('product_details');?>">
					<!--<i class="icon-user icon-1x"></i>-->
					<img src="<?php echo base_url();?>template/images/icons/product.png" />
					<span><?php echo get_phrase('product');?></span>
				</a>
		</li>


		<!------client----->
		<li class="<?php if($page_name == 'order')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?client/order" rel="tooltip" data-placement="right" 
					data-original-title="<?php echo get_phrase('order_details');?>">
					<!--<i class="icon-user icon-1x"></i>-->
					<img src="<?php echo base_url();?>template/images/icons/order.png" />
					<span><?php echo get_phrase('order');?></span>
				</a>
		</li>

        
		<!------client----->
		<li class="<?php if($page_name == 'invoice')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?client/invoice" rel="tooltip" data-placement="right" 
					data-original-title="<?php echo get_phrase('invoice_details');?>">
					<!--<i class="icon-user icon-1x"></i>-->
					<img src="<?php echo base_url();?>template/images/icons/invoice.png" />
					<span><?php echo get_phrase('invoice');?></span>
				</a>
		</li>


		<!------client----->
		<li class="<?php if($page_name == 'message')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?client/message" rel="tooltip" data-placement="right" 
					data-original-title="<?php echo get_phrase('message_details');?>">
					<!--<i class="icon-user icon-1x"></i>-->
					<img src="<?php echo base_url();?>template/images/icons/message.png" />
					<span><?php echo get_phrase('message');?></span>
				</a>
		</li>


		<!------manage own profile--->
		<li class="<?php if($page_name == 'manage_profile')echo 'dark-nav active';?>">
			<span class="glow"></span>
				<a href="<?php echo base_url();?>index.php?client/manage_profile" rel="tooltip" data-placement="right" 
                	data-original-title="<?php echo get_phrase('profile_help');?>">
					<!--<i class="icon-lock icon-1x"></i>-->
                    <img src="<?php echo base_url();?>template/images/icons/profile.png" />
					<span><?php echo get_phrase('profile');?></span>
				</a>
		</li>
		
	</ul>
	
</div>