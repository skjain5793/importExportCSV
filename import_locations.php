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
                    <div class="col-lg-9">
                        <h1 class="page-header">
                            Dashboard <small>Import Location</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Import Location
                            </li>
                        </ol>
                    </div>
                    <div class="col-lg-3">
                      <h1 class="page-header">
                            <a href="view_locations.php"><button class="btn btn-success">View Locations</button></a>
                     </h1>
                    </div>
                </div>
                <!-- /.row -->

<div class="row">The file you import must be a CSV (Comma Separated Values) file. The name of your file should end with (.csv)</div> <br><br>

                <!-- Import Locations form -->
                <div class="row">
 					 <form action="<?php $_?>" method="post" enctype="multipart/form-data" >
                     <div class="col-md-12">
                        <center>Location File<input type="file" name="filename"  class="form-control" style="width:50%" ></center>
                     </div>  <br><br> <br><br>
                     <div class="col-md-12">
                        <center><input type="submit" class="btn btn-success " name="upload" value="Upload" /></center>
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
include "config.php";

	if(isset($_POST['upload']))
		{
      if (is_uploaded_file($_FILES['filename']['tmp_name'])) {
       echo ("<script LANGUAGE='javascript'>
				alert('File Uploaded Successfully');
				window.location='view_locations.php';
				</script>");
         readfile($_FILES['filename']['tmp_name']);

    }
	//Import uploaded file to Database

    $handle = fopen($_FILES['filename']['tmp_name'], "r");



    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {

        $import=mysqli_query($conn,"INSERT into  location(pin_code,state,city) values('$data[0]','$data[1]','$data[2]')");
    if($import)
	   {
		   //echo"uploaded";
	   }

	else{
		//echo"Error".mysqli_error($conn);
	}

    }



    fclose($handle);

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
