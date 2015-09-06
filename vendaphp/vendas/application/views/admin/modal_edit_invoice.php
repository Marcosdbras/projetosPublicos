<div class="tab-pane box active" id="edit" style="padding: 5px">
                <div class="box-content">
				<?php foreach($edit_data as $row):?>
                	<?php echo form_open('admin/invoice/do_update/'.$row['invoice_id'] , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                        <div class="padded">
                            
							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('invoice title');?></label>
								<div class="controls">
									<input type="text" class="" name="name" value="<?php echo $row['name'];?>"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('client');?></label>
								<div class="controls">
									<select name="client" class="uniform" style="width:100%;" onchange="show(this.value)"  required>
                                    	<option value=""><?php echo get_phrase('select a client');?></option>
                                    	<?php 
										$client = $this->db->get('client')->result_array();
										foreach($client as $row1):
										?>
                                    		<option value="<?php echo $row1['client_id'];?>"
                                            <?php if($row['client'] == $row1['client_id'])echo 'selected';?>>
											<?php echo $row1['name'];?></option>
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>

							<?php 
							$client = $this->db->get('client')->result_array();
							foreach($client as $row2):
							?>
							<div class="control-group" id="client_id_<?php echo $row2['client_id'];?>" style="display:<?php if($row['client'] == $row2['client_id']){echo 'block';} else {echo 'none';}?>;">
								<label class="control-label"><?php echo get_phrase('order');?></label>
								<div class="controls">
									<select name="<?php if($row['client'] == $row2['client_id']){echo 'order';} else {echo 'temp';}?>" id="name_<?php echo $row2['client_id'];?>" class="uniform" style="width:100%;">
                                    	<option value=""><?php echo get_phrase('select an approved order');?></option>
                                    	<?php 
										$order = $this->crud_model->get_orders_by_client($row2['client_id']);;
										foreach($order as $row1):
										if ($row1['status'] == 'approved'):
										?>
                                    		<option value="<?php echo $row1['order_id'];?>"
                                            <?php if($row['order'] == $row1['order_id'])echo 'selected';?>>
											<?php echo $this->crud_model->get_type_name_by_id('product',$row1['product']); ?> (<?php echo $this->crud_model->get_type_name_by_id('type',$this->crud_model->get_type_name_by_id('product',$row1['product'],'type')); ?>) - <?php echo $row1['quantity'];?> <?php echo $this->crud_model->get_type_name_by_id('product',$row1['product'],'quantity_unit'); ?>(s) - $ <?php echo $row1['total_price'];?></option>
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
								<label class="control-label"><?php echo get_phrase('note');?></label>
								<div class="controls">
									<input type="text" class="" name="note" value="<?php echo $row['note'];?>"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('date');?></label>
								<div class="controls">
									<input type="date" class="" name="date" value="<?php echo $row['date'];?>"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('status');?></label>
								<div class="controls">
                                    <select name="status" class="uniform" style="width:100%;" >
                                        <option value="unpaid" <?php if ($row['status'] == 'unpaid') echo 'selected';?>><?php echo get_phrase('unpaid');?></option>
                                        <option value="paid" <?php if ($row['status'] == 'paid') echo 'selected';?>><?php echo get_phrase('paid');?></option>
                                    </select>    
								</div>
							</div>
                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('edit_invoice');?></button>
                        </div>
                    </form>
                    <?php endforeach;?>
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
		  for(i=0;i<=300;i++)
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
</script>