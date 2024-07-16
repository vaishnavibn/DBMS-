<?php
require('top.inc.php');
if($_SESSION['ROLE']!=1){
	header('location:add_employee.php?id='.$_SESSION['USER_ID']);
	die();
}
if(isset($_GET['type']) && $_GET['type']=='delete' && isset($_GET['id'])){
	$id=mysqli_real_escape_string($con,$_GET['id']);
	mysqli_query($con,"delete from employee where id='$id'");
}
$res=mysqli_query($con,"select * from employee where role=2 order by id desc");
?>
<div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title">STAFF Details </h4><br>
						   <h4 class="box_title_link"><a href="add_employee.php" style="font-weight:bold; color: black; padding: 10px; background-color: #E0FFFF; border: 2px solid #000; border-radius: 5px;">+ Add Staff</a> </h4>
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                              <table class="table ">
                                 <thead>
                                    <tr>
                                       <th width="1%" style="color:black; font-size:15px">S.No</th>
                                       <th width="1%" style="color:black; font-size:15px">ID</th>
                                       <th width="30%"style="color:black; font-size:15px">Name</th>
									   <th width="15%"style="color:black; font-size:15px">Email</th>
									   <th width="15%" style="color:black; font-size:15px">Mobile</th>
                                       <th width="20%" style="color:black; font-size:15px">Update</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <?php 
									$i=1;
									while($row=mysqli_fetch_assoc($res)){?>
									<tr>
                                       <td><?php echo $i?></td>
									   <td><?php echo $row['id']?></td>
                                       <td><?php echo $row['name']?></td>
									   <td><?php echo $row['email']?></td>
									   <td><?php echo $row['mobile']?></td>
                              <td>
                              <a href="add_employee.php?id=<?php echo $row['id']?>" style="color:black; padding: 7px; background-color:#CDCDCD;border: 2px solid #000; border-radius: 5px;">&nbsp;
                              Edit</a>
                              <a href="employee.php?id=<?php echo $row['id']?>&type=delete" style="color:red; padding: 7px; background-color:#CDCDCD;border: 2px solid #000; border-radius: 5px;">Delete</a>
                              </td>
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