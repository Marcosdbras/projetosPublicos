<div class="tab-pane box active" id="edit" style="padding: 20px">
    <div class="box-content">
        <?php 
			$invoice_info	=	$this->crud_model->get_invoice_info($current_invoice_id);
			foreach($invoice_info as $row):
		?>
        
        
        <div class="pull-left">
			<span style="font-size:20px;font-weight:100;">
				<?php echo get_phrase('payment_to');?>
            </span>
            <br />
            <?php echo $system_name;?>
            <br />
            <?php //echo $this->db->get_where('settings' , array('type'=>'address'))->row()->description;?>
        </div>
        <div class="pull-right">
			<span style="font-size:20px;font-weight:100;">
				<?php echo get_phrase('bill_to');?>
            </span>
            <br />
				<?php echo $this->db->get_where('client' , array('client_id'=>$row['client']))->row()->name;?>
            <br />
            	<?php echo get_phrase('address');?> : 
            	<?php echo $this->db->get_where('client' , array('client_id'=>$row['client']))->row()->address;?>
            <br />
            	<?php echo get_phrase('email');?> : 
				<?php echo $this->db->get_where('client' , array('client_id'=>$row['client']))->row()->email;?>
        </div>
        <div style="clear:both;"></div>
        <hr />
        <table width="100%">
        	<tr style="background-color:#7087A3; color:#fff; padding:5px;">
            	<td style="padding:5px;"><?php echo get_phrase('invoice_title');?></td>
                <td style="padding:5px;"><?php echo get_phrase('rate');?></td>
                <td style="padding:5px;"><?php echo get_phrase('quantity');?></td>
            	<td width="30%" style="padding:5px;">
					<div class="pull-right">
						<?php echo get_phrase('amount');?>
                    </div>
                </td>
            </tr>
        	<tr>
            	<td>
					<span style="font-size:20px;font-weight:100;">
						<?php echo $row['name'];?>
                        <br />
                        <?php echo $this->crud_model->get_product_detail_by_order($row['order']);?>
                        <br />
                        (<?php echo $this->crud_model->get_type_name_by_id('type',$this->crud_model->get_type_name_by_id('product',$this->crud_model->get_product_detail_by_order($row['order'],'product_id'),'type')); ?>)
                    </span>
                    <br />
					<?php echo $row['note'];?>
                </td>
                <td>
					<span style="font-size:15px;font-weight:100;">
						$ <?php echo $this->crud_model->get_order_amount($row['order'],'rate');?> / <?php echo $this->crud_model->get_product_detail_by_order($row['order'],'quantity_unit');?>
                    </span>
                </td>
                <td>
					<span style="font-size:15px;font-weight:100;">
						<?php echo $this->crud_model->get_order_amount($row['order'],'quantity');?> <?php echo $this->crud_model->get_product_detail_by_order($row['order'],'quantity_unit');?>(s)
                    </span>
                </td>
            	<td width="30%" style="padding:5px;">
					<div class="pull-right">
						<span style="font-size:20px;font-weight:100;">
							$ <?php echo $this->crud_model->get_order_amount($row['order']);?>
                        </span>
                    </div>
                </td>
            </tr>
        	<tr>
            	<td></td>
                <td></td>
                <td></td>
            	<td width="30%" style="padding:5px;">
                	<div class="pull-right">
                    <hr />
                    <?php echo get_phrase('status');?> : <?php echo $row['status'];?>
                    <br />
                    <?php echo get_phrase('invoice_id');?> : <?php echo $row['invoice_id'];?>
                    <br />
                    <?php echo get_phrase('date');?> : <?php echo $row['date'];;?>
                    </div>
                </td>
            </tr>
        </table>
<br />
<br />

        
        <?php endforeach;?>
    </div>
</div>