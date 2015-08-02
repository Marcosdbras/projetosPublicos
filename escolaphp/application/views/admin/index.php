
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
		<?php include 'application/views/includes.php';?>
        <title><?php echo $page_title;?> | <?php echo $system_title;?></title>
    </head>
    
    
<body>
    <?php include 'header.php';?>
    <?php include 'navigation.php';?>
    <div class="main-content">
		<?php include 'page_info.php';?>
        <?php //include 'breadcrumb.php';?>
        <div class="container-fluid padded">
            <?php include $page_name.'.php';?>
        </div> 
    </div>
    <?php include 'modal_hidden.php';?>
</body>
</html>