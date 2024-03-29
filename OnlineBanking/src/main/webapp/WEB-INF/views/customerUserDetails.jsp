<%@include file="customerHeader.jsp"%>
	<div class="content-wrapper">
		<div class="col-md-12" id="page-content">
			<a href="#modifyaccount" class="btn btn-primary btn-sm" style="margin-bottom: 20px;" data-toggle="modal">Modify Account</a>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">User Details</h3>
				</div>
				<div class="panel-body no-padding">
					<table id="content-table">
						<tbody>
							<tr>
								<td class="active" style="width:30%">User ID</td>
								<td>${user.id}</td>
							</tr>
							<tr>
								<td class="active">Name</td>
								<td>${user.name}</td>
							</tr>
							<tr>
								<td class="active">Email</td>
								<td>${user.email}</td>
							</tr>
							<tr>
								<td class="active">Phone</td>
								<td>${user.phone}</td>
							</tr>	
							<tr>
								<td class="active">Address</td>
								<td>${user.address}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="modal" id="modifyaccount">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body no-padding">
						<div class="panel panel-success no-margin">
							<div class="panel-heading">
								<h3 class="panel-title">Edit Account</h3>
							</div>
							<div class="panel-body">
								<form class="form-horizontal" action="addrequest"
									method="POST">
									<fieldset>
										<div class="form-group">
											<label for="requestType" class="col-lg-3 control-label">Request
												Type</label>
											<div class="col-lg-9 form-margin">
												<select class="form-control" name="requestType" required>
													<option value="">Select Type</option>
													<option value="phone">Phone Change</option>
													<option value="address">Address Change</option>
												</select>
											</div>
											<label for="newValue" class="col-lg-3 control-label">Enter</label>
											<div class="col-lg-9">
												<input type="text" class="form-control" name="newValue"
													placeholder="New Detail" required>
											</div>
											<input type="hidden" name="userID" value="${userID}">
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" />
											<div class="col-lg-10 col-lg-offset-2"
												style="margin-top: 15px;">
												<button style="float: right;" type="button"
													class="btn btn-default" data-dismiss="modal">Close</button>
												<button style="float: right; margin-right: 15px;"
													type="submit" class="btn btn-primary">Submit</button>
											</div>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- .content-wrapper -->

	</main>
	
<script type="text/javascript">
	$(document).ready(function() {
		sideNavigationSettings();
	});
	</script>
	
</body>
</html>