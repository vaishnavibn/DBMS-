<?php
require('top.inc.php');
if($_SESSION['ROLE']!=1){
	header('location:add_employee.php?id='.$_SESSION['USER_ID']);
	die();
}
if(isset($_GET['type']) && $_GET['type']=='delete' && isset($_GET['id'])){
	$id=mysqli_real_escape_string($con,$_GET['id']);
	mysqli_query($con,"delete from leave_type where id='$id'");
}
$res=mysqli_query($con,"select * from leave_type order by id desc");
?>
<div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h1 class="box-title" style="font-weight:bold; font-size: 25px;">
                           Leave Types </h1><br>
						   <h4 class="box_title_link"><a href="add_leave_type.php" style=";font-weight:bold; color: black; padding: 10px; background-color: #E0FFFF; border: 2px solid #000; border-radius: 5px;">
                     + Add Leave Type</a> </h4>
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                              <table class="table ">
                                 <thead >
                                    <tr >
                                       <th width="5%" style="color:black; font-size:15px">S.No</th>
                                       <th width="5%" style="color:black;font-size:15px">ID</th>
                                       <th width="70%" style="color:black;font-size:15px">Leave Type</th>
                                       <th width="20%" style="color:black;font-size:15px"></th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <?php 
									$i=1;
									while($row=mysqli_fetch_assoc($res)){?>
									<tr>
                                       <td><?php echo $i?></td>
									   <td><?php echo $row['id']?></td>
                                       <td><?php echo $row['leave_type']?></td>
									   <td><a href="add_leave_type.php?id=<?php echo $row['id']?>" style="color:black; padding: 7px; background-color:#CDCDCD;border: 2px solid #000; border-radius: 5px;">&nbsp;
                              Edit</a>
                               <a href="leave_type.php?id=<?php echo $row['id']?>&type=delete"  style="color:red; padding: 7px; background-color:#CDCDCD;border: 2px solid #000; border-radius: 5px;">Delete</a></td>
                                    </tr>
									<?php 
									$i++;
									} ?>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
		  </div>
         
<?php
require('footer.inc.php');
?>