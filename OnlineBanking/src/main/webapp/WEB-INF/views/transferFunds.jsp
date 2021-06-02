<%@include file="customerHeader.jsp"%>
	<div class="content-wrapper">
		<div class="col-md-12" id="tfrfundsPageContent">
			<c:choose>
				<c:when test="${displayPanel == 'externalFundTransfer' }">
					<div class="panel panel-primary" id="externaltransferpanel">
						<div class="panel-heading">
							<h3 class="panel-title">Transfer Money - With Account Number</h3>
						</div>
						<div class="panel-body">
							<form class="form-horizontal" action="transferConfirmation.jsp"
								method='POST' onsubmit="return validateExternal()">
								<fieldset>
									<div class="form-group">
										<label for="etpselectPayeeAccount"
											class="col-lg-2 control-label">Transfer To : </label>
										<div class="col-lg-5 input-group">
											<input type="text" class="form-control input-sm"
												id="etpselectPayeeAccount" name="etpselectPayeeAccount"
												list="payeeHistory" placeholder="Enter/Select Payee Account"
												required>
											<datalist id="payeeHistory">
												<c:forEach items="${payeeAccounts}" var="item">
													<option value="${item}"></option>
												</c:forEach>
											</datalist>
										</div>
									</div>

									<div class="form-group">
										<label for="etpselectPayerAccount"
											class="col-lg-2 control-label">Transfer From : </label>
										<div class="col-lg-5 input-group">
											<select class="form-control input-sm"
												id="etpselectPayerAccount" name="etpselectPayerAccount"
												required>
												<option value="" disabled selected style="display: none;">Select
													Account</option>
												<c:forEach items="${userAccounts}" var="item">
													<option value="${item}">${item}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="etpinputAmount" class="col-lg-2 control-label">Amount
											: </label>
										<div class="col-lg-5 input-group">
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" /> <input type="text"
												class="form-control input-sm" id="etpinputAmount"
												name="etpinputAmount" placeholder="Enter Amount" required>
										</div>
									</div>

									<div class="form-group">
										<label for="textArea" class="col-lg-2 control-label">Description
											: </label>
										<div class="col-lg-5 input-group">
											<textarea class="form-control input-lg" rows="1"
												id="etpTextArea" name="etpTextArea"
												placeholder="Enter a short desription for this transaction"></textarea>
											<span class="help-block"> </span>
										</div>
									</div>

									<div class="form-group">
										<label class="col-lg-2 control-label"></label>
										<div class="col-lg-5 input-group">
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</c:when>


				<c:when test="${displayPanel == 'emailPhoneFundTransfer' }">
					<div class="panel panel-primary" id="emailphonetransferpanel">
						<div class="panel-heading">
							<h3 class="panel-title">Phone Transfer</h3>
						</div>
						<div class="panel-body">
							<form class="form-horizontal"
								onsubmit="return validateEmailPhone()"
								action="EmailPhoneTransferSubmit" method="POST">
								<fieldset>
									<div class="form-group">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" /> <label for="eptpModeOfTransfer"
											class="col-lg-2 control-label">Transfer Via : </label>
										<div class="col-lg-5 input-group">
											<select class="form-control input-sm" id="eptpModeOfTransfer"
												name="eptpModeOfTransfer">
												<option>Select Mode of Transfer</option>
												<option>Phone</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="eptpinputMode" class="col-lg-2 control-label">Transfer
											To : </label>
										<div class="col-lg-5 input-group">
											<input type="text" class="form-control input-sm"
												id="eptpinputMode" name="eptpinputMode"
												placeholder="Enter Payee's Email/Phone">
										</div>
									</div>
									<div class="form-group">
										<label for="eptpselectPayerAccount"
											class="col-lg-2 control-label">Transfer From : </label>
										<div class="col-lg-5 input-group">
											<select class="form-control input-sm"
												id="eptpselectPayerAccount" name="eptpselectPayerAccount">
												<option>Select Account</option>
												<c:forEach items="${userAccounts}" var="item">
													<option value="${item}">${item}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="eptpinputAmount" class="col-lg-2 control-label">Amount
											: </label>
										<div class="col-lg-5 input-group">
											<input type="text" class="form-control input-sm"
												id="eptpinputAmount" name="eptpinputAmount"
												placeholder="Enter Amount">
										</div>
									</div>

									<div class="form-group">
										<label for="textArea" class="col-lg-2 control-label">Description
											: </label>
										<div class="col-lg-5 input-group">
											<textarea class="form-control input-lg" rows="1"
												id="eptpTextArea" name="eptpTextArea"
												placeholder="Enter a short desription for this transaction"></textarea>
											<span class="help-block"> </span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-2 control-label"></label>
										<div class="col-lg-5 input-group">
											<button type="submit" class="btn btn-primary">Submit</button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</c:when>
			</c:choose>
		</div>
	</div>
</body>
</html>