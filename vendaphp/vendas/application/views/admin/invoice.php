<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('invoice_list');?>
                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('add_invoice');?>
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
                                    <?php $count = 1;foreach($invoice as $row):?>
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
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('edit_invoice',<?php echo $row['invoice_id'];?>)"	class="btn btn-gray btn-small">
                                                    <i class="icon-wrench"></i> <?php echo get_phrase('edit');?>
                                            </a>
                                            <a data-toggle="modal" href="#modal-delete" onclick="modal_delete('<?php echo base_url();?>index.php?admin/invoice/delete/<?php echo $row['invoice_id'];?>')"
                                                 class="btn btn-red btn-small">
                                                    <i class="icon-trash"></i> <?php echo get_phrase('delete');?>
                                            </a>
                                        </td>
                                    </tr>
                                    <?php endforeach;?>
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
			</div>
            <!----TABLE LISTING ENDS--->
            
            
			<!----CREATION FORM STARTS---->
			<div class="tab-pane box" id="add" style="padding: 5px">
                <div class="box-content">
                	<?php echo form_open('admin/invoice/create' , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                        <div class="padded">
                            

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('Invoice title');?></label>
								<div class="controls">
									<input type="text" class="validate[required]" name="name"/>
								</div>
							</div>
                            
							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('client');?></label>
								<div class="controls">
									<select name="client" class="uniform" style="width:100%;" onchange="show(this.value)"  required>
                                    	<option value=""><?php echo get_phrase('select a client');?></option>
                                    	<?php 
										$client = $this->db->get('client')->result_array();
										foreach($client as $row):
										?>
                                    		<option value="<?php echo $row['client_id'];?>"><?php echo $row['name'];?></option>
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>


							<?php 
							$client = $this->db->get('client')->result_array();
							foreach($client as $row):
							?>
							<div class="control-group" id="client_id_<?php echo $row['client_id'];?>" style="display:none;">
								<label class="control-label"><?php echo get_phrase('order');?></label>
								<div class="controls">
									<select name="temp" id="name_<?php echo $row['client_id'];?>" class="uniform" style="width:100%;">
                                    	<option value=""><?php echo get_phrase('select an approved order');?></option>
                                    	<?php 
										$order = $this->crud_model->get_orders_by_client($row['client_id']);;
										foreach($order as $row):
										if ($row['status'] == 'approved'):
										?>
                                    		<option value="<?php echo $row['order_id'];?>"><?php echo $this->crud_model->get_type_name_by_id('product',$row['product']); ?> (<?php echo $this->crud_model->get_type_name_by_id('type',$this->crud_model->get_type_name_by_id('product',$row['product'],'type')); ?>) - <?php echo $row['quantity'];?> <?php echo $this->crud_model->get_type_name_by_id('product',$row['product'],'quantity_unit'); ?>(s) - $ <?php echo $row['total_price'];?></option>
                                        <?php
										endif;
										endforeach;
										?>
                                    </select>
								</div>
							</div>
							<?php
							endforeach;
							?>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('date');?></label>
								<div class="controls">
									<input type="date" class="validate[required]" name="date" id="date"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('status');?></label>
								<div class="controls">
									<select name="status" class="uniform" style="width:100%;" >
                                    	<option value="unpaid" selected="selected"><?php echo get_phrase('unpaid');?></option>
                                        <option value="paid"><?php echo get_phrase('paid');?></option>
                                    </select>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('note');?></label>
								<div class="controls">
                                    <textarea name="note" rows="8" required="required"></textarea>
								</div>
							</div>
                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('add_invoice');?></button>
                        </div>
                    </form>                
                </div>                
			</div>
			<!----CREATION FORM ENDS--->
            
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
	
	function show(client_id)
	  {
		  for(i=0;i<=1000;i++)
		  {
	
			  try
			  {
				  document.getElementById('client_id_'+i).style.display = 'none' ;
				  document.getElementById('name_'+i).setAttribute("name" , "temp") ;
				  document.getElementById('name_'+i).removeAttribute("required");
			  }
			  catch(err){}
		  }
		  document.getElementById('client_id_'+client_id).style.display = 'block' ;
		  document.getElementById('name_'+client_id).setAttribute("name" , "order") ;
		  document.getElementById('name_'+client_id).setAttribute("required" , "required") ;
	  }

	$(document).ready(function(){	
		
		var tod=new Date();
		var d=tod.getDate();
		var mn=tod.getMonth()+1;
		var y=tod.getFullYear();
		mn=checkTime(mn);
		d=checkTime(d);
		document.getElementById('date').value=y+"-"+mn+"-"+d;
		
		function checkTime(i)
		{
		if (i<10)
		  {
		  i="0" + i;
		  }
		return i;
		}
	});
</script>