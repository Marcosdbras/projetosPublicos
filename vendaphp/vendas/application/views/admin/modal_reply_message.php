<div class="tab-pane box active" id="edit" style="padding: 5px">
                <div class="box-content">
				<?php foreach($edit_data as $row):?>
                	<?php echo form_open('admin/message/do_update/'.$row['message_id'] , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                        <div class="padded">
                            
                            <div class="control-group">
								<div class="controls">
									<input type="hidden" name="sender" value="1"/>
									<input type="hidden" name="sender_type" value="admin"/>
									<input type="hidden" name="receiver_type" value="client"/>
                                    <input type="hidden" name="timestamp" value="<?php echo time(); ?>"/>
                                    <input type="hidden" name="time" id="time"/>
                                    <input type="hidden" name="date" id="date"/>
								</div>
							</div>



							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('receiver');?></label>
								<div class="controls">
									<input type="hidden" class="" name="receiver" value="<?php echo $row['sender'];?>"/>
									<input type="text" disabled="disabled" class="" name="receiver" 
                                    	value="<?php echo $this->crud_model->get_type_name_by_id('client' , $row['sender'] , 'name');?>"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('subject');?></label>
								<div class="controls">
									<input type="text" class="" name="subject" value=""/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label"><?php echo get_phrase('body');?></label>
								<div class="controls">
                                	<textarea name="body" ></textarea>
								</div>
							</div>

                            
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo get_phrase('reply_message');?></button>
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