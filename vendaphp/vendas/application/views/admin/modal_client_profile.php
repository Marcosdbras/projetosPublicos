<?php
$client_info	=	$this->crud_model->get_client_info($current_client_id);
foreach($client_info as $row):?>
    <center>
    <div class="box">

        <table class="table table-normal ">


			<?php if($row['name'] != ''):?>
			<tr>
				<td><?php echo get_phrase('name');?></td>
				<td><b><?php echo $row['name'];?></b></td>
			</tr>
			<?php endif;?>	
        

			<?php if($row['email'] != ''):?>
			<tr>
				<td><?php echo get_phrase('email');?></td>
				<td><b><?php echo $row['email'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['password'] != ''):?>
			<tr>
				<td><?php echo get_phrase('password');?></td>
				<td><b><?php echo $row['password'];?></b></td>
			</tr>
			<?php endif;?>	

			<?php if($row['creation_date'] != ''):?>
			<tr>
				<td><?php echo get_phrase('creation_date');?></td>
				<td><b><?php echo $row['creation_date'];?></b></td>
			</tr>
			<?php endif;?>	
	


			<?php if($row['about'] != ''):?>
			<tr>
				<td><?php echo get_phrase('about');?></td>
				<td><b><?php echo $row['about'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['address'] != ''):?>
			<tr>
				<td><?php echo get_phrase('address');?></td>
				<td><b><?php echo $row['address'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['phone'] != ''):?>
			<tr>
				<td><?php echo get_phrase('phone');?></td>
				<td><b><?php echo $row['phone'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['store'] != ''):?>
			<tr>
				<td><?php echo get_phrase('store');?></td>
				<td><b><?php echo $row['store'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['group'] != ''):?>
			<tr>
				<td><?php echo get_phrase('group');?></td>
				<td><b><?php echo $this->crud_model->get_type_name_by_id('group',$row['group']);?></b></td>
			</tr>
			<?php endif;?>	


        	
        </table>
	</div>
	</center>

<?php endforeach;?>