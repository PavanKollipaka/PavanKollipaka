<%@include file="customerHeader.jsp"%>
	<div class="content-wrapper">
		<div class="col-md-11" id="page-content">

			<h1>Credit Card Payment</h1>

			<div class="row">

				<form class="form-horizontal" action="/transferConfirmation" method="POST"
					onsubmit="return checkInputOr()">
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h4 class="panel-title">Account</h4>
						</div>

						<div class="panel-body">
							<div class="row">
								<div class="col-sm-3">Next Payment Date:</div>
								<div class="col-sm-3">2021-06-16</div>
							</div>

							<div class="row">
								<div class="col-sm-3">Out Standing Balance:</div>
								<div class="col-sm-3">35456.85</div>
							</div>
						</div>
					</div>
					<div class="form-group">

						<label for="inputAmount" class="col-sm-3 control-label">
							Enter the amount to pay</label>


						<div class="input-group">
							<div class="input-group-addon">$</div>

							<input type="text" class="form-control" id="inputAmountField"
								placeholder="Amount" name="inputAmountField">

							<!-- 							<div class="input-group-addon">.00</div> -->
						</div>
					</div>
					<fieldset disabled="">
						<div class="form-group">
							<label for="labelAccount" class="col-sm-3 control-label">Account</label>
							<div class="input-group">
								<input type="text" class="form-control" id="inputAmount"
									placeholder="Checking Account (Balance: )" required="">
							</div>
						</div>
					</fieldset>
					<div class="form-group">
						<div class="col-sm-3">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
							<button style="background-color: rgb(92, 207, 88);" type="submit"
								class="btn btn-default">Pay</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>