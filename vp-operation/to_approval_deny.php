<?php 
	include ('menu.php');
?>	
	<link rel="shortcut icon" href="../hrlogo.png">		
		<div class="container-fluid">
				<div class = "row" style = "margin-top:50px">	
					<div class = "col-md-8 col-md-offset-1">
						<ul class="nav nav-tabs">
						  <li role="presentation"><a href="view-emp-pending.php">Pending</a></li>
						  <li role="presentation" ><a href="to_approval_approve.php">Approve</a></li>
						  <li role="presentation" class="active"><a href="to_approval_deny.php">Deny</a></li>
						</ul>
					</div>
					<div class = "col-md-3">
						<h1>Travel Order</h1>
					</div>
				</div>
<div class="container-fluid">
	<div class = "row">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="table-responsive">
					<?php
						//all employees
						$sql = "SELECT * FROM employee, travel_ordr, department, vp_oper
									WHERE employee.emp_id = travel_ordr.emp_id AND employee.id_dept = department.id_dept AND vp_oper.vp_operation = travel_ordr.vp_operation AND 
									vp_oper.vp_operation = '4'";
						$qry=mysql_query($sql);
					?>
						<table class='table table-hover'>
									<thead>
										<tr>
											<th>Employee ID</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Designation</th>
											<th>Venue</th>
											<th>Activity</th>
											<th>Filed Date</th>
											<th>Status</th>
											<th></th>
										</tr>
									</thead>
					<?php
						while($rec=mysql_fetch_array($qry))
						{
					?>
					<tbody>
						<tr>
								<td>
										<?php echo $rec['id_emp'] ?>
									</td>
									<td>
										<?php echo $rec['emp_fname'] ?>
									</td>
									<td>
										<?php echo $rec['emp_lname'] ?>
									</td>
									<td>
										<?php echo $rec['emp_pos'] ?>
									</td>
									<td>
										<?php echo $rec['to_venue']?>
									</td>
									<td>
										<?php echo $rec['to_activ']?>
									</td>
									<td>
										<?php echo $rec['date']?>
									</td>
									<td>
									<?php echo $rec['name_stat_oper']; ?>
									</td>
									<td>
										<a href='to_denyapprove.php?id=<?php echo $rec['to_id']?>'><input type='button' value='View' data-toggle="tooltip" data-placement="top" title ="View Content" class='btn btn-info'/></a>
									</td>
							</tr>
					</tbody>
				<?php
					}
					echo"</table>";
				?>
				</div>
			</div>
		</div>
	</div>
</div>
	</div>
	<?php include("footer.php")?>