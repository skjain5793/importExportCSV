<?php
session_start();
if(isset($_SESSION['username']))
{
?>

<?php include("config.php"); ?>

<?php include("header.php"); ?>

<?php include("left_sidebar.php"); ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">


                  <?php
                  include'config.php';
                  $fp = fopen('php://output', 'w');
                  /* $filename = "toy_csv.csv";
                  $fp = fopen('php://output', 'w');

                  $query = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='phppot_examples' AND TABLE_NAME='toy'";
                  $result = mysql_query($query);
                  while ($row = mysql_fetch_row($result)) {
                  	$header[] = $row[0];
                  }
                   */
                  header('Content-type: application/csv');
                  header('Content-Disposition: attachment; filename='.$filename);
                  fputcsv($fp, $header);

                  $query = "SELECT * FROM location";
                  $result = mysql_query($query);
                  while($row = mysql_fetch_row($result)) {
                  	fputcsv($fp, $row);
                  }
                  exit;
                  ?>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

<?php include("footer.php"); ?>
<?php
}
else
{
    header("location:index.php");
}
?>
