
<?php
$teacher_info	=	$this->crud_model->get_teacher_info($current_teacher_id);
foreach($teacher_info as $row):?>
<center>
<div class="box">
	<div class="">
		<div class="title">
			<div style="float:left;width:370px;height:147px;text-align:left;position:relative; margin-bottom:20px;">
				<div class="avatar" style="position:absolute;bottom:0px;left:20px;">
					<img src="<?php echo $this->crud_model->get_image_url('teacher' , $row['teacher_id']);?>" 
						class="avatar-big" style="max-height:130px;max-width:130px;" />
				</div>
				<div  style="position:absolute; bottom:10px;left:150px;">
					<h3 style=" color:#666;font-weight:100;"><?php echo $row['name'];?></h3>
				</div>
			</div>
		</div>
	</div>
	<table class="table table-normal">

		<?php if($row['name'] != ''):?>
		<tr>
			<td width="150">Nome</td>
			<td><b><?php echo $row['name'];?></b></td>
		</tr>
		<?php endif;?>
	
		<?php if($row['birthday'] != ''):?>
		<tr>
			<td>Data Nascimento </td>
			<td><b><?php echo $row['birthday'];?></b></td>
		</tr>
		<?php endif;?>
	
		<?php if($row['sex'] != ''):?>
		<tr>
			<td>Sexo</td>
			<td><b><?php echo $row['sex'];?></b></td>
		</tr>
		<?php endif;?>
	
		<?php if($row['blood_group'] != ''):?>
		<tr>
			<td>Tipo sanguineo </td>
			<td><b><?php echo $row['blood_group'];?></b></td>
		</tr>
		<?php endif;?>
	
		<?php if($row['religion'] != ''):?>
		<tr>
			<td>Religi&atilde;o</td>
			<td><b><?php echo $row['religion'];?></b></td>
		</tr>
		<?php endif;?>
	
		<?php if($row['address'] != ''):?>
		<tr>
			<td>Endere&ccedil;o</td>
			<td><b><?php echo $row['address'];?></b></td>
		</tr>
		<?php endif;?>
	
		<?php if($row['phone'] != ''):?>
		<tr>
			<td>Telefone</td>
			<td><b><?php echo $row['phone'];?></b></td>
		</tr>
		<?php endif;?>
	
		<?php if($row['email'] != ''):?>
		<tr>
			<td>Email</td>
			<td><b><?php echo $row['email'];?></b></td>
		</tr>
		<?php endif;?>
	</table>
</center>

<?php endforeach;?>