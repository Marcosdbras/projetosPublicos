	<div class="container-fluid padded">
		<div class="row-fluid">
			<div class="span30">
				<!-- find me in partials/action_nav_normal -->
				<!--big normal buttons-->
				<div class="action-nav-normal">
					<div class="row-fluid">
                    

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/category">
							<img src="<?php echo base_url();?>template/images/icons/category.png" />
							<span><?php echo get_phrase('manage_category');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('category');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/client">
							<img src="<?php echo base_url();?>template/images/icons/client.png" />
							<span><?php echo get_phrase('manage_client');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('client');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/group">
							<img src="<?php echo base_url();?>template/images/icons/group.png" />
							<span><?php echo get_phrase('manage_group');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('group');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/invoice">
							<img src="<?php echo base_url();?>template/images/icons/invoice.png" />
							<span><?php echo get_phrase('manage_invoice');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('invoice');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/message">
							<img src="<?php echo base_url();?>template/images/icons/message.png" />
							<span><?php echo get_phrase('manage_message');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('message');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/order">
							<img src="<?php echo base_url();?>template/images/icons/order.png" />
							<span><?php echo get_phrase('manage_order');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('order');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/product">
							<img src="<?php echo base_url();?>template/images/icons/product.png" />
							<span><?php echo get_phrase('manage_product');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('product');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/transaction">
							<img src="<?php echo base_url();?>template/images/icons/transaction.png" />
							<span><?php echo get_phrase('manage_transaction');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('transaction');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/type">
							<img src="<?php echo base_url();?>template/images/icons/type.png" />
							<span><?php echo get_phrase('manage_type');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('type');?></span>
							</a>
						</div>
						
						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?admin/system_settings">
							<img src="<?php echo base_url();?>template/images/icons/settings.png" />
							<span><?php echo get_phrase('settings');?></span>
							</a>
						</div>
						
						
					</div>
				</div>
			</div>
            <!---DASHBOARD MENU BAR ENDS HERE-->
       </div>
       <!--
		<div class="row-fluid">
            <div class="span6">
				<div class="box">
					<div class="box-header">
						<div class="title">
                        	<i class="icon-calendar"></i>
							<?php /* echo get_phrase('calendar_schedule');?>
						</div>
					</div>
					<div class="box-content">
						<div id="calendar2">
						</div>
					</div>
				</div>
			</div>
            <!---CALENDAR ENDS-->
            
            <!---TO DO LIST STARTS-
			<div class="span6">
				<div class="box">
					<div class="box-header">
						<span class="title">
                        	<i class="icon-reorder"></i>
                            <?php echo get_phrase('noticeboard');?>
                        </span>
					</div>
					<div class="box-content scrollable" style="max-height: 500px; overflow-y: auto">
                    
                    	<?php 
						$notices	=	$this->db->get('noticeboard')->result_array();
						foreach($notices as $row):
						?>
						<div class="box-section news with-icons">
							<div class="avatar blue">
								<i class="icon-tag icon-2x"></i>
							</div>
							<div class="news-time">
								<span><?php echo date('d',$row['create_timestamp']);?></span> <?php echo date('M',$row['create_timestamp']);?>
							</div>
							<div class="news-content">
								<div class="news-title">
									<?php echo $row['notice_title'];?>
								</div>
								<div class="news-text">
									 <?php echo $row['notice'];?>
								</div>
							</div>
						</div>
						<?php endforeach; */?>
					</div>
				</div>
			</div>
            <!---TO DO LIST ENDS-->
       </div>
   </div>
   
  
  <script>
  $(document).ready(function() {

    // page is now ready, initialize the calendar...

    $("#calendar2").fullCalendar({
            header: {
                left: "prev,next",
                center: "title",
                right: "month,agendaWeek,agendaDay"
            },
            editable: 0,
            droppable: 0,
            /*drop: function (e, t) {
                var n, r;
                r = $(this).data("eventObject"), n = $.extend({}, r), n.start = e, n.allDay = t, $("#calendar").fullCalendar("renderEvent", n, !0);
                if ($("#drop-remove").is(":checked")) return $(this).remove()
            },*/
            events: [
			<?php 
			$notices	=	$this->db->get('noticeboard')->result_array();
			foreach($notices as $row):
			?>
			{
                title: "<?php echo $row['notice_title'];?>",
                start: new Date(<?php echo date('Y',$row['create_timestamp']);?>, <?php echo date('m',$row['create_timestamp'])-1;?>, <?php echo date('d',$row['create_timestamp']);?>),
				end:	new Date(<?php echo date('Y',$row['create_timestamp']);?>, <?php echo date('m',$row['create_timestamp'])-1;?>, <?php echo date('d',$row['create_timestamp']);?>) 
            },
			<?php 
			endforeach
			?>
			]
        })

});
  </script>