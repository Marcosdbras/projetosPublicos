	<div class="container-fluid padded">
		<div class="row-fluid">
			<div class="span30">
				<!-- find me in partials/action_nav_normal -->
				<!--big normal buttons-->
				<div class="action-nav-normal">
					<div class="row-fluid">
                    
						

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?client/invoice">
							<img src="<?php echo base_url();?>template/images/icons/invoice.png" />
							<span><?php echo get_phrase('manage_invoice');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('invoice');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?client/message">
							<img src="<?php echo base_url();?>template/images/icons/message.png" />
							<span><?php echo get_phrase('manage_message');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('message');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?client/order">
							<img src="<?php echo base_url();?>template/images/icons/order.png" />
							<span><?php echo get_phrase('manage_order');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('order');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?client/product">
							<img src="<?php echo base_url();?>template/images/icons/product.png" />
							<span><?php echo get_phrase('manage_product');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('product');?></span>
							</a>
						</div>

						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?client/transaction">
							<img src="<?php echo base_url();?>template/images/icons/transaction.png" />
							<span><?php echo get_phrase('manage_transaction');?></span>
							<span class="label label-blue"><?php echo $this->db->count_all_results('transaction');?></span>
							</a>
						</div>
						
						
						
					</div>
				</div>
			</div>
            <!---DASHBOARD MENU BAR ENDS HERE-->
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