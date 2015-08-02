<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('invoice_list');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
            <!----TABLE LISTING STARTS--->
            <div class="tab-pane  active" id="list">
            		<div class="action-nav-normal">
                        <div class=" action-nav-button" style="width:300px;">
                          <a href="#" title="Users">
                            <img src="<?php echo base_url();?>template/images/icons/invoice.png" />
                            <span>Total <?php echo count($invoice);?> <?php echo get_phrase('invoice');?></span>
                          </a>
                        </div>
                    </div>
                    <div class="box">
                        <div class="box-content">
                            <div id="dataTables">
                            <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive">
                                <thead>
                                    <tr>
                                        <th><div>ID</div></th>                                        
										<th><div><?php echo get_phrase('invoice title');?></div></td>
										<th><div><?php echo get_phrase('client');?></div></th>
                                        <th><div><?php echo get_phrase('order details');?></div></th>
										<th><div><?php echo get_phrase('amount');?></div></th>
										<th><div><?php echo get_phrase('date');?></div></th>
										<th><div><?php echo get_phrase('status');?></div></th>
										<th><div><?php echo get_phrase('note');?></div></th>
                                                                                
                                        <th><div><?php echo get_phrase('options');?></div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $count = 1;foreach($invoice as $row): if($row['client'] == $this->session->userdata('client_id')):?>
                                    <tr>
                                        <td><?php echo $count++;?></td>
                                        <td><?php echo $row['name'];?></td>
										<td><?php echo $this->crud_model->get_type_name_by_id('client',$row['client']);?></td>
										<td>
										<?php echo get_phrase('product');?> : <?php echo $this->crud_model->get_product_detail_by_order($row['order']); ?> (<?php echo $this->crud_model->get_type_name_by_id('type',$this->crud_model->get_type_name_by_id('product',$this->crud_model->get_product_detail_by_order($row['order'],'product_id'),'type')); ?>)
                                        <br/>
                                        <?php echo get_phrase('quantity');?> : <?php echo $this->crud_model->get_order_amount($row['order'], 'quantity');?> <?php echo $this->crud_model->get_product_detail_by_order($row['order'],'quantity_unit'); ?>(s)
                                        </td>
										<td> $ <?php echo $this->crud_model->get_order_amount($row['order']);?></td>
										<td><?php echo $row['date'];?></td>
										<td>
											<span class="label label-<?php if ($row['status'] == 'unpaid'){echo 'red';} else if($row['status'] == 'paid'){echo 'green'; } ;?>">
                                            	<?php echo $row['status'];?>
                                            </span>
                                        </td>
										<td><?php echo $row['note'];?></td>
                                        
                                        <td align="center">
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('invoice_profile',<?php echo $row['invoice_id'];?>)"
                                                 class="btn btn-default btn-small">
                                                    <i class="icon-user"></i> <?php echo get_phrase('view invoice');?>
                                            </a>
                                        </td>
                                    </tr>
                                    <?php endif;endforeach;?>
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
			</div>
            <!----TABLE LISTING ENDS--->

		</div>
	</div>
</div>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#imgInp").change(function(){
        readURL(this);
    });

</script>