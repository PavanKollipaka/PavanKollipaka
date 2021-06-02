<%@include file="customerHeader.jsp"%>
	<script src="<c:url value="/resources/js/jspdf.js" />"></script>
	<script src="<c:url value="/resources/js/jspdf.table.js" />"></script>
	<div class="content-wrapper">
		<div class="col-md-12" id="page-content">
			<div>
				<p id="heading" style="font-size: 30px; text-align: center">Savings
					Account</p>
			</div>
			<div class="panel panel-warning">
				<div class="panel-heading">
					<h3 class="panel-title">ACCOUNT INFORMATION</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-2">
							<b>Account Number:</b>
						</div>
						<div class="col-sm-3">1234567890</div>

					</div>
					<div class="row">
						<div class="col-sm-2">
							<b>Account Balance:</b>
						</div>
						<div class="col-sm-3">15000</div>
					</div>
					<hr>
					<h3>
						<center>Transaction History</center>
					</h3>

					<form class="form-horizontal" action="SavingsAccount" method='POST'
						onSubmit="return checkInputOr()">
						<div class="row">

							<select class="form-control" name="savingsPicker" id="select"
								style="max-width: 30%; float: right">
								<option>Last month</option>
								<option>Last 3 months</option>
								<option>Last 6 months</option>
							</select> <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<button type="submit" style="float: right" class="btn btn-primary">Submit</button>
						</div>
					</form>
					<hr>
					<div class="row" id="table-scroll"
						style="height: 200px; overflow: scroll">
						<table class="table table-striped" id="trans-table">
							<thead>
								<tr>
									<th class="col-xs-1">#</th>
									<th class="col-xs-4">Description</th>
									<th class="col-xs-1">Transaction Type</th>
									<th class="col-xs-1">Payee</th>
									<th class="col-xs-2">Amount</th>
									<th class="col-xs-2">Status</th>
									<th class="col-xs-3">Date</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="trans" items="${TransactionLines}"
									varStatus="loop">
									<tr>
										<th scope="row">1</th>
										<td>salary</td>
										<c:set var="account_number" scope="session"
											value="${checkingAccount.account_number}" />
										<c:set var="description" scope="session"
											value="${trans.description}" />
										<c:set var="payee_id" scope="session"
											value="${trans.payee_id}" />
										<c:set var="payer_id" scope="session"
											value="${trans.payer_id}" />
										<c:set var="depo_desc" scope="session"
											value="Deposit money to account" />
										<c:set var="with_desc" scope="session"
											value="Withdrawal of money from account" />



										<td>CREDIT</td>
										<td>ZXY</td>
										<td>15000</td>
										<td>successful</td>
										<td>2021-05-01</td>



									</tr>
								</c:forEach>
							</tbody>
							<tbody>
								<c:forEach var="trans" items="${TransactionLines}"
									varStatus="loop">
									<tr>
										<th scope="row">2</th>
										<td>Loan</td>
										<c:set var="account_number" scope="session"
											value="${checkingAccount.account_number}" />
										<c:set var="description" scope="session"
											value="${trans.description}" />
										<c:set var="payee_id" scope="session"
											value="${trans.payee_id}" />
										<c:set var="payer_id" scope="session"
											value="${trans.payer_id}" />
										<c:set var="depo_desc" scope="session"
											value="Deposit money to account" />
										<c:set var="with_desc" scope="session"
											value="Withdrawal of money from account" />



										<td>DEBIT</td>
										<td>ABCBANK</td>
										<td>5000</td>
										<td>successful</td>
										<td>2021-04-01</td>


									</tr>
								</c:forEach>
							</tbody>
							<tbody>
								<c:forEach var="trans" items="${TransactionLines}"
									varStatus="loop">
									<tr>
										<th scope="row">3</th>
										<td>Mobile recharge</td>
										<c:set var="account_number" scope="session"
											value="${checkingAccount.account_number}" />
										<c:set var="description" scope="session"
											value="${trans.description}" />
										<c:set var="payee_id" scope="session"
											value="${trans.payee_id}" />
										<c:set var="payer_id" scope="session"
											value="${trans.payer_id}" />
										<c:set var="depo_desc" scope="session"
											value="Deposit money to account" />
										<c:set var="with_desc" scope="session"
											value="Withdrawal of money from account" />



										<td>DEBIT</td>
										<td>Jio</td>
										<td>599</td>
										<td>successful</td>
										<td>2021-04-015</td>



									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>
			<button type="button"
				onclick="generatePDF(${savingsAccount.account_number},${savingsAccount.balance})"
				class="btn btn-primary">Download statements</button>
		</div>




	</div>
	</div>
	<!-- .content-wrapper -->
</body>
</html>