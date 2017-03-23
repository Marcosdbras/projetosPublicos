<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('transaction_list');?>
                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('add_transaction');?>
                    	</a></li>
            <li>
            	<a href="#report" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('summary');?>
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
                            <img src="<?php echo base_url();?>template/images/icons/transaction.png" />
                            <span>Total <?php echo count($transaction);?> <?php echo get_phrase('transaction');?></span>
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
										<th><div><?php echo get_phrase('amount');?></div></th>
										<th><div><?php echo get_phrase('type');?></div></th>
										<th><div><?php echo get_phrase('about');?></div></th>
										<th><div><?php echo get_phrase('date');?></div></th>
                                                                                
                                        <th><div><?php echo get_phrase('options');?></div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $count = 1; $expense = 0; $income = 0; foreach($transaction as $row):?>
                                    <tr>
                                        <td><?php echo $count++;?></td>
										<td>$ <?php echo $row['amount'];?></td>
										<td>
                                            <span class="label label-<?php if ($row['type'] == 'expense'){echo 'red'; $expense += $row['amount'];} else if($row['type'] == 'income'){echo 'green'; $income += $row['amount'];} ;?>">
                                            	<?php echo $row['type'];?>
                                            </span>
                                        </td>
										<td><?php echo $row['about'];?></td>
										<td><?php echo $row['date'];?></td>
                                        
                                        <td align="center">
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('transaction_profile',<?php echo $row['transaction_id'];?>)"
                                                 class="btn btn-default btn-small">
                                                    <i class="icon-user"></i> <?php echo get_phrase('view');?>
                                            </a>
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('edit_transaction',<?php echo $row['transaction_id'];?>)"	class="btn btn-gray btn-small">
                                                    <i class="icon-wrench"></i> <?php echo get_phrase('edit');?>
                                            </a>
                                            <a data-toggle="modal" href="#modal-delete" onclick="modal_delete('<?php echo base_url();?>index.php?admin/transaction/delete/<?php echo $row['transaction_id'];?>')"
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
                	<?php echo form_open('admin/transaction/create' , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                        <div class="padded">
                            

							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('amount');?></label>
								<div class="controls">
									$ <input type="number" class="validate[required]" name="amount"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('type');?></label>
								<div class="controls">
									<select name="type" class="uniform" style="width:100%;" >
                                    	<option value=""><?php echo get_phrase('select a type');?></option>
                                        <option value="expense"><?php echo get_phrase('expense');?></option>
                                        <option value="income"><?php echo get_phrase('income');?></option>
                                    </select>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('about');?></label>
								<div class="controls">
									<input type="text" class="validate[required]" name="about"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('date');?></label>
								<div class="controls">
									<input type="date" class="validate[required]" name="date" id="date"/>
								</div>
							</div>


                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('add_transaction');?></button>
                        </div>
                    </form>                
                </div>                
			</div>
			<!----CREATION FORM ENDS--->
            
            
            <!----REPORT STARTS--->
            <div class="tab-pane box" id="report" style="padding: 5px">
                <div class="box-content">
                <form class="form-horizontal validatable">
                	<div class="padded">
                        <div class="control-group">
                            <label class="control-label"><?php echo get_phrase('total income');?></label>
                            <div class="controls">
                                $ <?php echo $income;?>
                            </div>
                        </div> 
                        
                        <div class="control-group">
                            <label class="control-label"><?php echo get_phrase('total expense');?></label>
                            <div class="controls">
                               $ <?php echo $expense;?>
                            </div>
                        </div> 
                        
                        <div class="control-group">
                            <label class="control-label"><?php echo get_phrase('balance');?></label>
                            <div class="controls">
                                $ <?php echo $income-$expense;?>
                            </div>
                        </div> 
                    </div>
                </form>               	                                   
                </div>                
			</div>
            <!----REPORT ENDS--->
            
            
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