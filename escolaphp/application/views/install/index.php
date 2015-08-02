<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?php /* 
* @Nulled by Voky */
?> 
    <head>
        <title>Ekattor School Management System PRO | web installer</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="<?php echo base_url();?>template/install/install.css" type="text/css" media="screen"/>
		<script type="text/javascript" src="<?php echo base_url();?>template/install/jquery.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url();?>template/install/sliding.form.js"></script>
    </head>
    <style>
        span.reference{
            position:fixed;
            left:5px;
            top:5px;
            font-size:10px;
            text-shadow:1px 1px 1px #fff;
        }
        span.reference a{
            color:#555;
            text-decoration:none;
			text-transform:uppercase;
        }
        span.reference a:hover{
            color:#000;
            
        }
        h1 a{
            color:#ccc;
            font-size:26px;
            text-shadow:1px 1px 1px #fff;
            padding:20px;
			text-decoration:none;
        }
    </style>
    <body>
    	<center><br>
        	<h1>
            	Sistema de Gestão Escolar PRO
            </h1>
            
            
        </center>
        <div id="content">
        
        	<?php if( $this->session->flashdata('installation_result') == 'failed'):?>
        	<div class="result_error">Falha na instalação devido a configurações inválidas</div>
        	<?php endif;?>
            <?php if( ($this->session->flashdata('flash_message'))  != "" ):?>
<div class="result_error"> <?php echo $this->session->flashdata('flash_message');?> </div>
            <?php endif;?>
            
            <div id="wrapper">
                <div id="steps">
                    <?php echo form_open('install/do_install' , array('id' => 'formElem' , 'name' => 'formElem'));?>
                        <fieldset class="step">
                            <legend>Bem-vindo ao instalador web</legend>
                            <br><br><br><br><br><br>
                            <p>
                                Instale o script em poucos cliques.
                                <br>
                                Fornecer dados e configurações de administração,
                                <br>
                                e execute o instalador. É fácil !
                                
                                
                            </p>
                                <ol style="clear:both;margin-top:100px;margin-left:50px; text-align:left;">
                                	<li><span style="color:#900;font-weight:bold;">Necessário</span> - 
                                    	application/config/database.php deve ser <span style="color:#063;font-weight:bold;">gravável</span>
                                        
                                        <?php
											// Checking whether db config file is writtable
                                        	if (is_writable('./application/config/database.php')):?>
                                            	<img src="<?php echo base_url();?>template/images/tick.png" title="writtable" style="vertical-align:middle;"/>
                                        <?php
											else:?>
                                            	<img src="<?php echo base_url();?>template/images/cross.png" title="not writtable" style="vertical-align:middle;"/>
                                        <?php endif;?>
                                    </li>
                                    
                                	<li><span style="color:#900;font-weight:bold;">Necessário</span> - 
                                    	application/config/routes.php deve ser <span style="color:#063;font-weight:bold;">gravável</span>
                                        
                                        
                                        <?php
											// Checking whether routing config file is writtable
                                        	if (is_writable('./application/config/routes.php')):?>
                                            	<img src="<?php echo base_url();?>template/images/tick.png" title="writtable" style="vertical-align:middle;"/>
                                        <?php
											else:?>
                                            	<img src="<?php echo base_url();?>template/images/cross.png" title="not writtable" style="vertical-align:middle;"/>
                                        <?php endif;?>
                                    </li>
                                    
                                    <li><span style="color:#900;font-weight:bold;">Necessário</span> - 
                                    	php CURL função <span style="color:#063;font-weight:bold;">Habilitado </span>
                                        
                                        <?php
											// Checking whether CURL installed or not
                                        	if (in_array  ('curl', get_loaded_extensions())):?>
                                            	<img src="<?php echo base_url();?>template/images/tick.png" title="curl found" style="vertical-align:middle;"/>
                                        <?php
											else:?>
                                            	<img src="<?php echo base_url();?>template/images/cross.png" title="curl not found" style="vertical-align:middle;"/>
                                        <?php endif;?>
                                    </li>
                                </ol>
                        </fieldset>
                        
                        <fieldset class="step">
                            <legend>configurações de banco de dados</legend>
                            <p>
                                <label for="name">Nome banco de dados</label>
                                <input id="db_name" name="db_name" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="country">Nome de usuário</label>
                                <input id="db_uname" name="db_uname" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="phone">Senha</label>
                                <input id="db_password" name="db_password" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="website">Nome host</label>
                                <input id="db_hname" name="db_hname" type="text" AUTOCOMPLETE=OFF value="localhost" />
                            </p>
                        </fieldset>
                        <fieldset class="step">
                            <legend>Configurações</legend>
                            <p>
                                <label for="namecard">Nome da escola</label>
                                <textarea  name="system_name" AUTOCOMPLETE=OFF></textarea>
                            </p>
                            <p>
                                <label for="cardnumber">Email administrador</label>
                                <input id="email" name="email" type="text" AUTOCOMPLETE=OFF />
                            </p>
                            <p>
                                <label for="secure">Login senha</label>
                                <input id="password" name="password" type="password" AUTOCOMPLETE=OFF />
                            </p>
                        </fieldset>
						<fieldset class="step">
                            <legend>Confirm</legend>
							<p>
								Tudo no formulário foi preenchido corretamente 
								se todas as etapas têm um ícone de marca de seleção verde. 
								Um ícone de marca de seleção vermelha indica que algum campo 
								está faltando ou preenchido com dados inválidos.
							</p>
                            <p class="submit">
                                <button id="registerButton" type="submit">Instalar</button>
                            </p>
                        </fieldset>
                    <?php echo form_close();?>
                </div>
                <div id="navigation" style="display:none;">
                    <ul>
                        <li class="selected">
                            <a href="#">Bem vindo</a>
                        
                        </li>
                        <li>
                            <a href="#">Banco de dados</a>
                        </li>
                        <li>
                            <a href="#">Configurações</a>
                        </li>
						<li>
                            <a href="#">Instalação</a>
                        </li>
                    </ul>
                </div>
                <!--steps finishes here-->
            </div>
          By tmnet</a>
            
    </div>
    </body>
</html>