<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('message_list');?>
                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo get_phrase('add_message');?>
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
                            <img src="<?php echo base_url();?>template/images/icons/message.png" />
                            <span>Total <?php echo count($message);?> <?php echo get_phrase('message');?></span>
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
                                        <th><div><?php echo get_phrase('sender');?></div></th>
										<th><div><?php echo get_phrase('receiver');?></div></th>
										<th><div><?php echo get_phrase('subject');?></div></th>
										<th><div><?php echo get_phrase('date');?></div></th>
										<th><div><?php echo get_phrase('time');?></div></th>
                                                                                
                                        <th><div><?php echo get_phrase('options');?></div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $count = 1;foreach($message as $row): if(($row['sender_type'] == 'client' && $row['sender'] == $this->session->userdata('client_id'))|| ($row['receiver_type'] == 'client' && $row['receiver'] == $this->session->userdata('client_id'))):?>
                                    <tr>
                                        <td><?php echo $count++;?></td>
                                        <td><?php if ($row['sender_type'] == 'admin'){echo get_phrase('admin');} elseif ($row['sender_type'] == 'client'){echo 'you';}?></td>
										<td><?php if ($row['receiver_type'] == 'admin'){echo get_phrase('admin');} elseif ($row['receiver_type'] == 'client'){echo 'you';}?></td>
										<td><?php echo $row['subject'];?></td>
										<td><?php echo $row['date'];?></td>
										<td><?php echo $row['time'];?></td>
                                        
                                        <td align="center">
                                            <a data-toggle="modal" href="#modal-form" onclick="modal('message_profile',<?php echo $row['message_id'];?>)"
                                                 class="btn btn-default btn-small">
                                                    <i class="icon-user"></i> <?php echo get_phrase('view');?>
                                            </a>
                                            <?php if($row['sender_type'] == 'admin'):?>
                                                <a data-toggle="modal" href="#modal-form" onclick="modal('reply_message',<?php echo $row['message_id']; ?>)" class="btn btn-gray btn-small">
                                                        <i class="icon-wrench"></i> <?php echo get_phrase('reply');?>
                                                </a>
                                            <?php endif ?>
                                        </td>
                                    </tr>
                                    <?php endif; endforeach;?>
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
                	<?php echo form_open('client/message/create' , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                    <form method="post" action="<?php echo base_url();?>index.php?client/message/create/" class="form-horizontal validatable" enctype="multipart/form-data">
                        <div class="padded">
                            

							<div class="control-group">
								<div class="controls">
									<input type="hidden" name="sender" value="<?php echo $this->session->userdata('client_id'); ?>"/>
									<input type="hidden" name="sender_type" value="client"/>
									<input type="hidden" name="receiver_type" value="admin"/>
                                    <input type="hidden" name="receiver" value="1"/>
                                    <input type="hidden" name="timestamp" value="<?php echo time(); ?>"/>
                                    <input type="hidden" name="time" id="time"/>
                                    <input type="hidden" name="date" id="date"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('to');?></label>
								<div class="controls">
									<?php echo get_phrase('admin');?>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('subject');?></label>
								<div class="controls">
									<input type="text" class="validate[required]" name="subject"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('body');?></label>
								<div class="controls">
                                	<textarea name="body" rows="7"></textarea>
								</div>
							</div>                    
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('add_message');?></button>
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
	
	$(document).ready(function startTime(){	
		var today=new Date();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		// add a zero in front of numbers<10
		m=checkTime(m);
		s=checkTime(s);
		document.getElementById('time').value=h+":"+m+":"+s;
		t=setTimeout(function(){startTime()},500);
		
	
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