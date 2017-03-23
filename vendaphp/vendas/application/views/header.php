<div class="navbar navbar-top navbar-inverse">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="brand" href="<?php echo base_url();?>"><?php echo $system_name;?>
			</a>
			<!-- the new toggle buttons -->
			<ul class="nav pull-right">
				<li class="toggle-primary-sidebar hidden-desktop" data-toggle="collapse" data-target=".nav-collapse-primary"><button type="button" class="btn btn-navbar"><i class="icon-th-list"></i></button></li>
				<li class="hidden-desktop" data-toggle="collapse" data-target=".nav-collapse-top"><button type="button" class="btn btn-navbar"><i class="icon-align-justify"></i></button></li>
			</ul>
			<div class="nav-collapse nav-collapse-top collapse">
            	<ul class="nav pull-right">
					<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo get_phrase('account');?> <b class="caret"></b></a>
					<!-- Account Selector -->
                    <ul class="dropdown-menu">
                    	<li class="with-image">
                            <div class="avatar">
                                <!--<img src="<?php echo base_url();?>template/images/icons_big/<?php echo $this->session->userdata('login_type');?>.png" class="avatar-medium"/>-->
                                <?php
								if($this->session->userdata('login_type') == 'teacher'):?>
                                	<img src="<?php echo base_url();?>uploads/teacher_image/<?php echo $this->session->userdata('teacher_id');?>.jpg" class="avatar-medium"/>
                                <?php endif;?>
                                <?php
								if($this->session->userdata('login_type') == 'student'):?>
                                	<img src="<?php echo base_url();?>uploads/student_image/<?php echo $this->session->userdata('student_id');?>.jpg" class="avatar-medium"/>
                                <?php endif;?>
                                <?php
								if($this->session->userdata('login_type') == 'admin'):?>
                                	<img src="<?php echo base_url();?>template/images/icons_big/<?php echo $this->session->userdata('login_type');?>.png" class="avatar-medium"/>
                                <?php endif;?>
                            </div>
                            <span><?php echo $this->session->userdata('name');?></span>
                        </li>
                    	<li class="divider"></li>
                        
                        <?php
							if ($this->session->userdata('login_type')	==	'parent')
								$account_type	=	'parents';
							else
								$account_type	=	$this->session->userdata('login_type');
						?>
						<li><a href="<?php echo base_url();?>index.php?<?php echo $account_type;?>/manage_profile">
                        		<i class="icon-user"></i><span><?php echo get_phrase('profile');?></span></a></li>
                        <li><a href="<?php echo base_url();?>index.php?<?php echo $account_type;?>/manage_profile">
                        		<i class="icon-lock"></i><span><?php echo get_phrase('change_password');?></span></a></li>
						<li><a href="<?php echo base_url();?>index.php?login/logout">
                        		<i class="icon-off"></i><span><?php echo get_phrase('logout');?></span></a></li>
					</ul>
                	<!-- Account Selector -->
					</li>
				</ul>
				
				<ul class="nav pull-right">
					<li class="dropdown">
					
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Select Language <b class="caret"></b></a>

                        <ul class="dropdown-menu">
                            <?php
                            
							$fields = $this->db->list_fields('language');
                            foreach ($fields as $field)
                            {
                                if($field == 'phrase_id' || $field == 'phrase')continue;
                                ?>
                                    <li>
                                        <a href="<?php echo base_url();?>index.php?multilanguage/select_language/<?php echo $field;?>">
                                            <?php echo $field;?>
                                            <?php //selecting current language
                                                if($this->session->userdata('current_language') == $field):?>
                                                    <i class="icon-ok"></i>
                                            <?php endif;?>
                                        </a>
                                    </li>
                                <?php
                            }
                            ?>
                        </ul>
					</li>
				</ul>
                <ul class="nav pull-right">
					<li class="dropdown">
					<a href="#" ><i class="icon-user"></i><?php echo get_phrase($this->session->userdata('login_type')).' '.get_phrase('panel');?> </a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>