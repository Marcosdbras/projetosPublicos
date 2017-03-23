<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('product_list');?>
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
                            <img src="<?php echo base_url();?>template/images/icons/product.png" />
                            <span>Total <?php echo count($product);?> <?php echo get_phrase('product');?></span>
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
										<th><div><?php echo get_phrase('name');?></div></th>                 
										<th><div><?php echo get_phrase('category');?></div></th>
										<th><div><?php echo get_phrase('type');?></div></th>
                                        <th><div><?php echo get_phrase('price_per_unit');?></div></th>
										<th><div><?php echo get_phrase('creation_date');?></div></th>
                                                                                
                                        <th><div><?php echo get_phrase('options');?></div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $count = 1;foreach($product as $row):?>
                                    <tr>
                                        <td><?php echo $count++;?></td>
										<td><?php echo $row['name'];?></td>
										<td><?php echo $this->crud_model->get_type_name_by_id('category',$row['category']);?></td>
										<td><?php echo $this->crud_model->get_type_name_by_id('type',$row['type']);?></td>
                                        <td>$<?php echo $row['price'];?> / <?php echo $row['quantity_unit'];?></td>
										<td><?php echo $row['creation_date'];?></td>
                                        
                                        <td align="center">
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('product_profile',<?php echo $row['product_id'];?>)"
                                                 class="btn btn-default btn-small">
                                                    <i class="icon-user"></i> <?php echo get_phrase('view');?>
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