<%@include file="customerHeader.jsp"%>
	<div class="content-wrapper">
		<div class="col-md-12" id="page-content">
		
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Change Password</h3>
				</div>
				<div class="panel-body no-padding">
					<form action="/changepasswordconfirmation" method="POST">
						<div class="form-group">
							<label for="password" class="col-lg-2 control-label">Old
								Password: </label>
							<div class="col-lg-3 input-group">
								<input type="password" class="form-control input-lg"
									id="Password" name="Password" placeholder="Enter Old Password"
									required>
							</div>
						</div>
						<div class="form-group">
							<label for="newPassword" class="col-lg-2 control-label">New
								Password: </label>
							<div class="col-lg-3 input-group">
								<input type="password" class="form-control input-lg"
									id="newPassword" name="newPassword"
									placeholder="Enter Password" required>
							</div>
						</div>
						<div class="form-group">
							<label for="confirmPassword" class="col-lg-2 control-label">Confirm
								Password: </label>
							<div class="col-lg-3 input-group">
								<input type="password" class="form-control input-lg"
									id="confirmPassword" name="confirmPassword"
									placeholder="Confirm Password" required>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-5 input-group">
								<input type="submit" class="btn btn-success btn-lg" id="confirm"
									name="confirm" value="Confirm">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>