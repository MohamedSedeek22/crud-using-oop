<?php include('header.php'); ?>
<?php include('nav.php'); ?>


<?php  $row = $db->find('employees',$_GET['id']); ?>
<?php if(isset($_GET['id']) && is_numeric($_GET['id']) && $row):  ?>




<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h2 class="p-3 col text-center mt-5 text-white bg-primary">  Delete Employee </h2>
        </div>

        <div class="col-sm-12">
            <h3 class="alert alert-success mt-5 text-center">
             <?php echo $db->delete('employees',$row['id']); ?>
            </h3>
        </div>
        
        
    </div>
</div>

<?php else: ?>

    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h3 class="alert alert-danger mt-5 text-center"> Not Found </h3>
            </div>
        </div>
    </div> 
    

<?php  endif;  ?>

<?php include('footer.php'); ?>



  