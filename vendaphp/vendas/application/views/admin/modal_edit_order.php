<div class="tab-pane box active" id="edit" style="padding: 5px">
                <div class="box-content">
                <input type="hidden" id="test_page" value="order_edit" />
				<?php foreach($edit_data as $row):?>
                	<?php echo form_open('admin/order/do_update/'.$row['order_id'] , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                        <div class="padded">
                            

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('client');?></label>
								<div class="controls">
									<select name="client" class="uniform" style="width:100%;" required>
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


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('product');?></label>
								<div class="controls">
									<select name="product" class="uniform" style="width:100%;" onchange="show_price(this.value)" required>
                                    	<option value=""><?php echo get_phrase('select a product');?></option>
                                    	<?php 
										$product = $this->db->get('product')->result_array();
										foreach($product as $row1):
										?>
                                    		<option value="<?php echo $row1['product_id'];?>"
                                            <?php if($row['product'] == $row1['product_id']){echo 'selected';}?>>
											<?php echo $row1['name'];?> (<?php echo $this->crud_model->get_type_name_by_id('type',$this->crud_model->get_type_name_by_id('product',$row1['product_id'],'type')); ?>)</option>
                                            
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>

							<?php 
                            $product = $this->db->get('product')->result_array();
                            foreach($product as $row1):
                            ?>
                                    <input type="hidden" id="get_unit_<?php echo $row1['product_id'];?>" value="<?php echo $row1['quantity_unit'];?>"/>
                                    <input type="hidden" id="get_price_<?php echo $row1['product_id'];?>" value="<?php echo $row1['price'];?>"/>
							<?php
                            endforeach;
                            ?>                                    
							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('quantity');?></label>
								<div class="controls">
									<input type="number" step="any" class="" name="quantity" id="quantity" value="<?php echo $row['quantity'];?>" onblur="total(this.value)" onkeyup="total(this.value)" onchange="total(this.value)"/>
                                    <span id="quantity_unit_1"><?php echo $this->crud_model->get_type_name_by_id('product',$row['product'],'quantity_unit'); ?> (s)</span> 
								</div>
							</div>
                            
                            <div class="control-group">
								<label class="control-label"><?php echo get_phrase('rate');?></label>
								<div class="controls">
									$ <input type="number" step="any" class="" name="rate" value="<?php echo $row['rate'];?>" id="price"   onchange="totalr(this.value)" onblur="totalr(this.value)" onkeyup="totalr(this.value)"/> / 
                                    <span id="quantity_unit"><?php echo $this->crud_model->get_type_name_by_id('product',$row['product'],'quantity_unit'); ?></span>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('total_price ($)');?></label>
								<div class="controls">
									$ <span id="total_value"><?php echo $row['total_price'];?></span>
                                    <input type="hidden" class="" name="total_price" id="total_price" value="<?php echo $row['total_price'];?>"/>
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
									<select name="status" class="uniform" style="width:100%;" required>
                                    	<option value="pending" <?php if ($row['status'] == 'pending'){echo 'selected';} ?>><?php echo get_phrase('pending');?></option>
                                        <option value="approved" <?php if ($row['status'] == 'approved'){echo 'selected';} ?>><?php echo get_phrase('approved');?></option>
                                        <option value="cancelled" <?php if ($row['status'] == 'cancelled'){echo 'selected';} ?>><?php echo get_phrase('cancelled');?></option>
                                    </select>
								</div>
							</div>


                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('edit_order');?></button>
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
	
	  function show_price(product_id)
  {
	  if (document.getElementById('test_page').value == "order_edit")
		{
	
			  for(i=0;i<=300;i++)
			  {
		
				  try
				  {
					  document.getElementById('product_id_'+i).style.display = 'none' ;
					  document.getElementById('name_product_'+i).setAttribute("name" , "temp") ;
					  document.getElementById('name_product_'+i).removeAttribute("required");
					  document.getElementById('get_price_'+i).removeAttribute("required");
				  }
				  catch(err){}
			  }
			  var x = document.getElementById('get_unit_'+product_id).value ;
			  var y = document.getElementById('get_price_'+product_id).value ;
			  document.getElementById('quantity_unit_1').innerHTML = " "+x+" (s)" ;
			  document.getElementById('quantity_unit').innerHTML = x ;
			  document.getElementById('price').value = y ;
			  document.getElementById('total_price').value = '' ;
			  document.getElementById('quantity').value = '' ;
		}
  }
  
  function total(quantity)
  {
	  if (document.getElementById('test_page').value == "order_edit")
		{
			  var price = document.getElementById('price').value ;
			  document.getElementById('total_price').value = (quantity*price) ;
			  document.getElementById('total_value').innerHTML = (quantity*price) ;
		}
  }
  
  function totalr(price)
  {
	  if (document.getElementById('test_page').value == "order_edit")
		{
			  //document.getElementById('price').value = price ;
			  var quantity = document.getElementById('quantity').value ;
			  document.getElementById('total_price').value = (quantity*price) ;
			  document.getElementById('total_value').innerHTML = (quantity*price) ;
		}
  }
</script>