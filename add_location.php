<?php
session_start();
if(isset($_SESSION['username']))
{
?>

<?php include("header.php"); ?>

<?php include("left_sidebar.php"); ?>



        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-5">
                        <h1 class="page-header">
                            Dashboard <small>Add Location</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Add Location
                            </li>
                        </ol>
                    </div>

                    <div class="col-lg-2">
                      <h1 class="page-header">
                            <a href="import_locations.php"><button class="btn btn-success">Import</button></a>
                     </h1>
                    </div>

                    <div class="col-lg-2">
                      <h1 class="page-header">
                            <a href="export_locations.php"><button class="btn btn-success">Export</button></a>
                     </h1>
                    </div>

                    <div class="col-lg-3">
                      <h1 class="page-header">
                            <a href="view_locations.php"><button class="btn btn-success">View Locations</button></a>
                     </h1>
                    </div>
                </div>
                <!-- /.row -->

                <!-- Add Location form -->
                <div class="row">
                    <form method="post" action="">
                        <div class="col-md-12">
                              <center>Pin Code<input type="text" name="pincode" class="form-control" placeholder="Enter Pincode" style="width:50%"></center><br><br>
                        </div> <br>
                        <div class="col-md-12">
                              <center>State<input type="text" name="state" class="form-control" placeholder="Enter State" style="width:50%"></center><br><br>
                        </div>
                        <div class="col-md-12">
                              <center>City<input type="text" name="city" class="form-control" placeholder="Enter City" style="width:50%"></center><br><br>
                        </div>
                        <div class="col-md-12">
                              <center>Extra charges<input type="text" name="extracharges" class="form-control" placeholder="Enter Extra Charges" style="width:50%"></center><br><br>
                        </div>
                        <div class="col-md-12">
                              <center><div id="error"></div></center><br><br>
                        </div>
                        <div class="col-md-12">
                              <center><input type="submit" name="submit" value="Submit" class="btn btn-success"></center><br><br>
                        </div>
                        <div class="col-md-12">
                              <center><div id="success"></div></center>
                        </div>

                    </form>
                </div>
                <!-- /.row -->


            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


<?php
if(isset($_POST['submit']))
{

  include("../config.php");

  $pincode = $_POST['pincode'];

  $state = $_POST['state'];

  $city = $_POST['city'];
  
  $extracharges = $_POST['extracharges'];

          $query = mysqli_query($conn,"insert into location(pin_code,state,city,extra_charges) values('$pincode','$state','$city','$extracharges')");

          if($query)
          {
             echo ("<script LANGUAGE='javascript'>
             alert('Location Added Successfully!');
             window.location='view_locations.php';
             </script>");
          }
          else
          {
            echo ("<script LANGUAGE='javascript'>
            alert('Something went wrong.Try again!');
            window.location='add_location.php';
            </script>");
          }


}
?>


<?php include("footer.php"); ?>
<?php
}
else
{
    header("location:index.php");
}
?>
