<div class="box">
	<div class="box-header">
    <input type="hidden" id="test_page" value="order" />
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('order_list');?>
                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('add_order');?>
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
                            <img src="<?php echo base_url();?>template/images/icons/order.png" />
                            <span>Total <?php echo count($order);?> <?php echo get_phrase('order');?></span>
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
										<th><div><?php echo get_phrase('client');?></div></th>
										<th><div><?php echo get_phrase('product');?></div></th>
                                        <th><div><?php echo get_phrase('rate');?></div></th>
										<th><div><?php echo get_phrase('quantity');?></div></th>
										<th><div><?php echo get_phrase('total_price');?></div></th>
										<th><div><?php echo get_phrase('date');?></div></th>
										<th><div><?php echo get_phrase('status');?></div></th>
                                                                                
                                        <th><div><?php echo get_phrase('options');?></div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $count = 1;foreach($order as $row):?>
                                    <tr>
                                        <td><?php echo $count++;?></td>
										<td><?php echo $this->crud_model->get_type_name_by_id('client',$row['client']);?></td>
										<td><?php echo $this->crud_model->get_type_name_by_id('product',$row['product']); ?> (<?php echo $this->crud_model->get_type_name_by_id('type',$this->crud_model->get_type_name_by_id('product',$row['product'],'type')); ?>)</td>
                                        <td>$ <?php echo $row['rate']; ?> / <?php echo $this->crud_model->get_type_name_by_id('product',$row['product'],'quantity_unit'); ?></td>
										<td><?php echo $row['quantity'];?> <?php echo $this->crud_model->get_type_name_by_id('product',$row['product'],'quantity_unit'); ?> (s)</td>
										<td>$ <?php echo $row['total_price'];?></td>
										<td><?php echo $row['date'];?></td>
										<td><span class="btn btn-small btn-<?php if ($row['status'] == 'pending'){echo 'blue';} elseif ($row['status'] == 'cancelled'){echo 'red';} elseif ($row['status'] == 'approved'){echo 'green';}?>"><?php echo $row['status'];?></span></td>
                                        
                                        <td align="center">
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('order_profile',<?php echo $row['order_id'];?>)"
                                                 class="btn btn-default btn-small">
                                                    <i class="icon-user"></i> <?php echo get_phrase('detail');?>
                                            </a>
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('edit_order',<?php echo $row['order_id'];?>)"	class="btn btn-gray btn-small">
                                                    <i class="icon-wrench"></i> <?php echo get_phrase('edit');?>
                                            </a>
                                            <a data-toggle="modal" href="#modal-delete" onclick="modal_delete('<?php echo base_url();?>index.php?admin/order/delete/<?php echo $row['order_id'];?>')"
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
                	<?php echo form_open('admin/order/create' , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                        <div class="padded">
                            

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('client');?></label>
								<div class="controls">
									<select name="client" class="uniform" style="width:100%;" required>
                                    	<option value=""><?php echo get_phrase('select a Client');?></option>
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

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('category');?></label>
								<div class="controls">
									<select name="category" class="uniform" style="width:100%;" onchange="show_type(this.value)"  required>
                                    	<option value=""><?php echo get_phrase('select a category');?></option>
                                    	<?php 
										$category = $this->db->get('category')->result_array();
										foreach($category as $row):
										?>
                                    		<option value="<?php echo $row['category_id'];?>"><?php echo $row['name'];?></option>
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>
                            
							<?php 
							$category = $this->db->get('category')->result_array();
							foreach($category as $row):
							?>
							<div class="control-group" id="category_id_<?php echo $row['category_id'];?>" style="display:none;">
								<label class="control-label"><?php echo get_phrase('type');?></label>
								<div class="controls">
									<select name="temp" id="name_<?php echo $row['category_id'];?>" class="uniform" style="width:100%;" onchange="show_product(this.value)" required>
                                    	<option value=""><?php echo get_phrase('select a type');?></option>
                                    	<?php 
										$type = $this->crud_model->get_types_by_category($row['category_id']);
										foreach($type as $row):
										?>
                                    		<option value="<?php echo $row['type_id'];?>"><?php echo $row['name'];?></option>
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>
							<?php
							endforeach;
							?>

							<?php 
							$type = $this->db->get('type')->result_array();
							foreach($type as $row):
							?>
							<div class="control-group" id="type_id_<?php echo $row['type_id'];?>" style="display:none;">
								<label class="control-label"><?php echo get_phrase('product');?></label>
								<div class="controls">
									<select name="temp" id="name_type_<?php echo $row['type_id'];?>" class="uniform" style="width:100%;" onchange="show_price(this.value)">
                                    	<option value=""><?php echo get_phrase('select a product');?></option>
                                    	<?php 
										$product = $this->crud_model->get_products_by_type($row['type_id']);
										foreach($product as $row):
										?>
                                    		<option value="<?php echo $row['product_id'];?>"><?php echo $row['name'];?></option>
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>
							<?php
							endforeach;
							?>
                            
                            <?php 
							$product = $this->db->get('product')->result_array();
							foreach($product as $row):
							?>
                                <input type="hidden" id="get_unit_<?php echo $row['product_id'];?>" value="<?php echo $row['quantity_unit'];?>"/>
                                <input type="hidden" id="get_price_<?php echo $row['product_id'];?>" value="<?php echo $row['price'];?>"/>
							<?php
							endforeach;
							?>
                            
                            <div class="control-group" id="rate_show" style="display:none;">
								<label class="control-label"><?php echo get_phrase('rate');  ?></label>
								<div class="controls">
									$ <input type="number" step="any" id="price" name="rate"  onchange="totalr(this.value)" onblur="totalr(this.value)" onkeyup="totalr(this.value)"/> / 
                                    <span id="quantity_unit"></span>
                            	</div>
							</div>
                            
							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('quantity');  ?></label>
								<div class="controls">
									<input type="number" step="any" class="validate[required]" name="quantity" id="quantity_value" onblur="total(this.value)" onkeyup="total(this.value)" onchange="total(this.value)"/>
                                    <span id="quantity_unit_1"></span>                                    
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('total_price ($)');?></label>
								<div class="controls">
									<input type="hidden" class="validate[required]" name="total_price" id="total_value"/>
                                    <input type="hidden"  />
                                    <span id="total_price"></span>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('date');?></label>
								<div class="controls">
									<input type="date" class="validate[required]" name="date"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('status');?></label>
								<div class="controls">
									<select name="status" class="uniform" style="width:100%;" >
                                    	<option value="pending"><?php echo get_phrase('pending');?></option>
                                        <option value="approved"><?php echo get_phrase('approved');?></option>
                                        <option value="cancelled"><?php echo get_phrase('cancelled');?></option>
                                    </select>
								</div>
							</div>


                            
                        </div>
                        <div class="form-actions">
                        	
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('add_order');?></button>
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
	
</script>