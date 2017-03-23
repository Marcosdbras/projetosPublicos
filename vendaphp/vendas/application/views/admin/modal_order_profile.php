<?php
$order_info	=	$this->crud_model->get_order_info($current_order_id);
foreach($order_info as $row):?>
    <center>
    <div class="box">

        <table class="table table-normal ">
        

			<?php if($row['client'] != ''):?>
			<tr>
				<td><?php echo get_phrase('client');?></td>
				<td><b><?php echo $this->crud_model->get_type_name_by_id('client',$row['client']);?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['product'] != ''):?>
			<tr>
				<td><?php echo get_phrase('product');?></td>
				<td><b><?php echo $this->crud_model->get_type_name_by_id('product',$row['product']); ?> (<?php echo $this->crud_model->get_type_name_by_id('type',$this->crud_model->get_type_name_by_id('product',$row['product'],'type')); ?>)</b></td>
			</tr>
			<?php endif;?>	

			<?php if($row['total_price'] != ''):?>
			<tr>
				<td><?php echo get_phrase('rate');?></td>
				<td><b>$ <?php echo $this->crud_model->get_type_name_by_id('product',$row['product'],'price'); ?> / <?php echo $this->crud_model->get_type_name_by_id('product',$row['product'],'quantity_unit'); ?></b></td>
			</tr>
			<?php endif;?>

			<?php if($row['quantity'] != ''):?>
			<tr>
				<td><?php echo get_phrase('quantity');?></td>
				<td><b><?php echo $row['quantity'];?> <?php echo $this->crud_model->get_type_name_by_id('product',$row['product'],'quantity_unit'); ?> (s)</b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['total_price'] != ''):?>
			<tr>
				<td><?php echo get_phrase('total_price');?></td>
				<td><b>$ <?php echo $row['total_price'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['date'] != ''):?>
			<tr>
				<td><?php echo get_phrase('date');?></td>
				<td><b><?php echo $row['date'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['status'] != ''):?>
			<tr>
				<td><?php echo get_phrase('status');?></td>
				<td><b><span class="btn btn-small btn-<?php if ($row['status'] == 'pending'){echo 'blue';} elseif ($row['status'] == 'cancelled'){echo 'red';} elseif ($row['status'] == 'approved'){echo 'green';}?>"><?php echo $row['status'];?></span></b></td>
			</tr>
			<?php endif;?>	


        	
        </table>
	</div>
	</center>

<?php endforeach;?>