<?php include('header.php'); ?>
<?php  $page_active = "employees"; ?>
<?php include('nav.php'); ?>





<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h2 class="p-3 col text-center mt-5 text-white bg-primary">  All Employees </h2>
        </div>

        <?php if(count($db->read("employees"))): ?>

        <div class="col-sm-12">
            <table class="table table-dark">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Department</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    

                    <?php foreach($db->read("employees") as $row): ?>
                        <tr>
                            <td><?php echo strtoupper($row['name']);  ?></td>
                            <td><?php echo $row['email'];  ?></td>
                            <td><?php echo strtoupper($row['department']);  ?></td>
                            <td>
                                <a href="edit-employee.php?id=<?php echo $row['id'] ?>" class="text-primary">
                                    <i class="fa fa-pencil-square-o fa-2x" ></i>
                                </a>
                            </td>

                            <td>
                                <a href="delete-employee.php?id=<?php echo $row['id'] ?>" class="text-danger">
                                    <i class="fa fa-times fa-2x" ></i>
                                </a>
                            </td>


                        </tr>
                    <?php endforeach; ?>
                    
                </tbody>
            </table>
        </div>

        <?php else: ?>

            <div class="col-sm-12">
                <h3 class="alert alert-danger mt-5 text-center"> Not Found Data </h3>
            </div>

        <?php endif; ?>
        
        
        
    </div>
</div>


<?php include('footer.php'); ?>



  