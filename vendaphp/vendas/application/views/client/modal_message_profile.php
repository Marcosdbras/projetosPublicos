<?php
$message_info	=	$this->crud_model->get_message_info($current_message_id);
foreach($message_info as $row):?>
    <center>
    <div class="box">
        <table class="table table-normal ">
        

			<?php if($row['sender'] != ''):?>
			<tr>
				<td><?php echo get_phrase('sender');?></td>
				<td><b><?php if ($row['sender_type'] == 'admin'){echo get_phrase('you');} elseif ($row['sender_type'] == 'client'){echo $this->crud_model->get_type_name_by_id('client',$row['sender']);}?></b></td>
			</tr>
			<?php endif;?>		


			<?php if($row['receiver'] != ''):?>
			<tr>
				<td><?php echo get_phrase('receiver');?></td>
				<td><b><?php if ($row['receiver_type'] == 'admin'){echo get_phrase('you');} elseif ($row['receiver_type'] == 'client'){echo $this->crud_model->get_type_name_by_id('client',$row['receiver']);}?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['subject'] != ''):?>
			<tr>
				<td><?php echo get_phrase('subject');?></td>
				<td><b><?php echo $row['subject'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['body'] != ''):?>
			<tr>
				<td><?php echo get_phrase('body');?></td>
				<td><b><?php echo $row['body'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['time'] != ''):?>
			<tr>
				<td><?php echo get_phrase('time');?></td>
				<td><b><?php echo $row['time'];?></b></td>
			</tr>
			<?php endif;?>
            
			<?php if($row['date'] != ''):?>
			<tr>
				<td><?php echo get_phrase('date');?></td>
				<td><b><?php echo $row['date'];?></b></td>
			</tr>
			<?php endif;?>	


        	
        </table>
	</div>
	</center>

<?php endforeach;?>