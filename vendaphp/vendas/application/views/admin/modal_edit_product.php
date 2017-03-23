<div class="tab-pane box active" id="edit" style="padding: 5px">
                <div class="box-content">
				<?php foreach($edit_data as $row):?>
                	<?php echo form_open('admin/product/do_update/'.$row['product_id'] , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                        <div class="padded">


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('name');?></label>
								<div class="controls">
									<input type="text" class="" name="name" value="<?php echo $row['name'];?>"/>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('category');?></label>
								<div class="controls">
									<select name="category" class="uniform" style="width:100%;" onchange="show(this.value)" required>
                                    	<option value=""><?php echo get_phrase('select a category');?></option>
                                    	<?php 
										$category = $this->db->get('category')->result_array();
										foreach($category as $row1):
										?>
                                    		<option value="<?php echo $row1['category_id'];?>"
                                            <?php if($row['category'] == $row1['category_id'])echo 'selected';?>>
											<?php echo $row1['name'];?></option>
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>
                            
							<?php 
							$category = $this->db->get('category')->result_array();
							foreach($category as $row1):
							?>
							<div class="control-group" id="category_id_<?php echo $row1['category_id'];?>" <?php if ($row1['category_id'] !== $row['category']) {echo 'style="display:none;"';} ?>>
								<label class="control-label"><?php echo get_phrase('type');?></label>
								<div class="controls">
									<select name="<?php if ($row['category'] == $row1['category_id']) {echo 'type';} else{echo 'temp';}?>" id="name_<?php echo $row1['category_id'];?>" class="uniform" style="width:100%;">
                                    	<option value=""><?php echo get_phrase('select a type');?></option>
                                    	<?php 
										$type = $this->crud_model->get_types_by_category($row1['category_id']);;
										foreach($type as $row2):
										?>
                                    		<option value="<?php echo $row2['type_id'];?>"
                                            <?php if($row['type'] == $row2['type_id'])echo 'selected';?>>
											<?php echo $row2['name'];?></option>
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>
							<?php
							endforeach;
							?>

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('description');?></label>
								<div class="controls">
									<input type="text" class="" name="description" value="<?php echo $row['description'];?>"/>
								</div>
							</div>
                            
                            <div class="control-group">
								<label class="control-label"><?php echo get_phrase('quantity_unit');?></label>
								<div class="controls">
									<input type="text" class="" name="quantity_unit" value="<?php echo $row['quantity_unit'];?>"/>
								</div>
							</div>
                            
                            <div class="control-group">
								<label class="control-label"><?php echo get_phrase('price_per_unit');?></label>
								<div class="controls">
									$<input type="number" class="" name="price" value="<?php echo $row['price'];?>"/> / <?php echo $row['quantity_unit'];?>
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('creation_date');?></label>
								<div class="controls">
									<input type="date" class="" name="creation_date" value="<?php echo $row['creation_date'];?>"/>
								</div>
							</div>


                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('edit_product');?></button>
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
	
	function show(category_id)
	  {
		  for(i=0;i<=100;i++)
		  {
			  try
			  {
				  document.getElementById('category_id_'+i).style.display = 'none' ;
				  document.getElementById('name_'+i).setAttribute("name" , "temp") ;
				  document.getElementById('name_'+i).removeAttribute("required");
			  }
			  catch(err){}
		  }
		  document.getElementById('category_id_'+category_id).style.display = 'block' ;
		  document.getElementById('name_'+category_id).setAttribute("name" , "type") ;
		  document.getElementById('name_'+category_id).setAttribute("required" , "required") ;
	  }
</script>