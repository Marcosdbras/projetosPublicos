<?php
$group_info	=	$this->crud_model->get_group_info($current_group_id);
foreach($group_info as $row):?>
    <center>
    <div class="box">
        <div class="">
            <div class="title">
                <div style="float:left;width:370px;height:147px;text-align:left;position:relative; margin-bottom:20px;">
                    <div class="avatar" style="position:absolute;bottom:0px;left:20px;">
                        <!--
                        <img src="<?php /*echo $this->crud_model->get_image_url('student' , $row['student_id']); */?>" 
                            class="avatar-big" style="max-height:130px;max-width:130px;" />
                         -->
                    </div>
                    <div  style="position:absolute; bottom:10px;left:150px;">
                        <h3 style=" color:#666;font-weight:100;"><?php /*echo $row['name'];*/?></h3>
                    </div>
                </div>
            </div>
        </div>
        <table class="table table-normal ">
        

			<?php if($row['name'] != ''):?>
			<tr>
				<td><?php echo get_phrase('name');?></td>
				<td><b><?php echo $row['name'];?></b></td>
			</tr>
			<?php endif;?>	


			<?php if($row['about'] != ''):?>
			<tr>
				<td><?php echo get_phrase('about');?></td>
				<td><b><?php echo $row['about'];?></b></td>
			</tr>
			<?php endif;?>	


        	
        </table>
	</div>
	</center>

<?php endforeach;?>