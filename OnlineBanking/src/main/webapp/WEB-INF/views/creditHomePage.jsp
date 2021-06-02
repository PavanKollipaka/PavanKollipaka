<%@include file="customerHeader.jsp"%>
	<div class="content-wrapper">
		<div class="col-md-12" id="page-content">
			<h3>Credit Card DashBoard</h3>
			<div class="panel panel-warning">
				<div class="panel-heading">
					<h4 class="panel-title">Account Info</h4>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-3">Next Payment Date:</div>
						<div class="col-sm-3">2021-06-15</div>
					</div>
					<div class="row">
						<div class="col-sm-3">Out Standing Balance:</div>
						<div class="col-sm-3">5323.56</div>
					</div>
					<div class="row">
						<div class="col-sm-3">Credit Limit:</div>
						<div class="col-sm-3">100000.00</div>
					</div>
					<div class="row">
						<div class="col-sm-3">Current Due Amount:</div>
						<div class="col-sm-3">56365.45</div>
					</div>
					<div class="row">
						<div class="col-sm-3">Cycle Date:</div>
						<div class="col-sm-3">2021-04-15</div>
					</div>
					<div class="row">
						<div class="col-sm-3">APR:</div>
						<div class="col-sm-3">11564.25</div>
					</div>
				</div>
			</div>
			<a class="btn btn-primary bnt-lg pull-right" href="/creditcardpayment"
				role="button">Make payment</a>
			<h3>Credit Card Statement</h3>
			<form class="form-horizontal" action="getTransactions" method='POST'
				onSubmit="return checkInputOr()">
				<select class="form-control" name="monthPicker">
					<c:forEach var="month" items="${months}" varStatus="loop">
						<option>May</option>
					</c:forEach>
				</select> <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>Description</th>
						<th>Payee</th>
						<th>Payer</th>
						<th>Amount</th>
						<th>Date</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="trans" items="${transations}" varStatus="loop">
						<tr>
							<th scope="row">1</th>
							<td>successful</td>
							<td>10445863</td>
							<td>Govinda Rao
							</th>
							<td>67456.73</td>
							<td>2021-04-09</td>
							<td>successful</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>