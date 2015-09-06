<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('client_list');?>
                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('add_client');?>
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
                            <img src="<?php echo base_url();?>template/images/icons/client.png" />
                            <span>Total <?php echo count($client);?> <?php echo get_phrase('client');?></span>
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
										<th><div><?php echo get_phrase('email');?></div></th>
										<th><div><?php echo get_phrase('group');?></div></th>
										<th><div><?php echo get_phrase('creation_date');?></div></th>
                                                                                
                                        <th><div><?php echo get_phrase('options');?></div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $count = 1;foreach($client as $row):?>
                                    <tr>
                                        <td><?php echo $count++;?></td>
										<td><?php echo $row['name'];?></td>
										<td><?php echo $row['email'];?></td>
										<td><?php echo $this->crud_model->get_type_name_by_id('group',$row['group']);?></td>
										<td><?php echo $row['creation_date'];?></td>
                                        
                                        <td align="center">
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('client_profile',<?php echo $row['client_id'];?>)"
                                                 class="btn btn-default btn-small">
                                                    <i class="icon-user"></i> <?php echo get_phrase('profile');?>
                                            </a>
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('edit_client',<?php echo $row['client_id'];?>)"	class="btn btn-gray btn-small">
                                                    <i class="icon-wrench"></i> <?php echo get_phrase('edit');?>
                                            </a>
                                            <a data-toggle="modal" href="#modal-delete" onclick="modal_delete('<?php echo base_url();?>index.php?admin/client/delete/<?php echo $row['client_id'];?>')"
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
                	<?php echo form_open('admin/client/create' , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                        <div class="padded">
                            

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('email');?></label>
								<div class="controls">
									<input type="email" class="validate[required]" name="email"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('password');?></label>
								<div class="controls">
									<input type="password" class="validate[required]" name="password" id="pass"/>
								</div>
							</div>
                            
                            <div class="control-group">
								<label class="control-label"><?php echo get_phrase('confirm password');?></label>
								<div class="controls">
									<input type="password" class="validate[required]" name="password_confirm" id="pass_con" onkeyup="pass_confirm()" onblur="pass_match()"/>
                                    <span style="margin-left:10px; background:white; border-radius:5px; padding:5px; min-height:10px; color:white; transition: all 1s; -webkit-transition:all 1s; visibility:hidden;" id="pass_confirm"></span>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('name');?></label>
								<div class="controls">
									<input type="text" class="validate[required]" name="name"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('creation_date');?></label>
								<div class="controls">
									<input type="date" class="validate[required]" name="creation_date"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('about');?></label>
								<div class="controls">
									<input type="text" class="validate[required]" name="about"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('address');?></label>
								<div class="controls">
									<input type="text" class="validate[required]" name="address"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('phone');?></label>
								<div class="controls">
									<input type="text" class="validate[required]" name="phone"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('store');?></label>
								<div class="controls">
									<input type="text" class="validate[required]" name="store"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('group');?></label>
								<div class="controls">
									<select name="group" class="uniform" style="width:100%;" required>
                                    	<option value=""><?php echo get_phrase('select a group');?></option>
                                    	<?php 
										$group = $this->db->get('group')->result_array();
										foreach($group as $row):
										?>
                                    		<option value="<?php echo $row['group_id'];?>"><?php echo $row['name'];?></option>
                                        <?php
										endforeach;
										?>
                                    </select>
								</div>
							</div>


                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray" style="visibility:hidden" id="submit_it"><?php echo get_phrase('add_client');?></button>
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
	
	function pass_confirm()
	{
		if(document.getElementById('pass').value == document.getElementById('pass_con').value)
		{
			document.getElementById('pass_confirm').innerHTML='OK';
			document.getElementById('pass_confirm').style.background='lime';
			document.getElementById('submit_it').style.visibility='visible';
		}
		else
		{
			document.getElementById('pass_confirm').innerHTML='Passwords did not match';
			document.getElementById('pass_confirm').style.background='red';	
			document.getElementById('submit_it').style.visibility='hidden';		
		}
		document.getElementById('pass_confirm').style.visibility='visible';
	}
	
	function pass_match()
	{
		if(document.getElementById('pass').value == document.getElementById('pass_con').value)
		{
			document.getElementById('pass_confirm').innerHTML='OK';
			document.getElementById('pass_confirm').style.background='lime';
			document.getElementById('pass_confirm').style.visibility='hidden';
		}
		else
		{
			document.getElementById('pass_confirm').innerHTML='Passwords did not match';
			document.getElementById('pass_confirm').style.background='red';	
			document.getElementById('pass_confirm').style.visibility='visible';		
		}
	}
	
</script>