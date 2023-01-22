<jsp:include page="../header.jsp" />
<body   onload="getAllLoanId();getAllLoanPlanName();getAllItemMasterName();getAllILockerName();getAllPurityMasterName();fetchAllMember()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
  <form method="post" action="" id="form1">
    <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
      <!-- Header Start-->
      <jsp:include page="../menu.jsp" />
      <!-- Header End -->
      <!-- Left side column. contains the logo and sidebar -->
      <!-- Aside Menu Start-->
      <jsp:include page="../asideMenu.jsp" />
      <!-- Aside Menu end -->
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="min-height: 1105.75px;">
        <section class="content-header">
          <h1 id="ContentPlaceHolder1_IdHeader">Group Loan Approval</h1>
          <ol class="breadcrumb">
            <li>
              <a href="Home.html">
                <i class="fa fa-dashboard"></i>Home </a>
            </li>
            <li>
              <a href="#">Dashboard</a>
            </li>
            <li class="active">Loan Details</li>
          </ol>
        </section>
        <section class="content">
         <div id="ContentPlaceHolder1_idSearch" class="row">
            <div class="col-md-12">
               <div class="box box-warning">
                  <div class="box-header with-border">
                     <h3 class="box-title">Search Details</h3>
                  </div>
                  <div class="form-horizontal">
                     <div class="box-body">
                        <div class="col-md-6">
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Select by LoanID <strong style="color: Red">*</strong></label>
                              <div class="col-sm-8">
                                 <select name="searchLoanID"  id="searchLoanID" class="form-control select2" style="width: 100%;">
                                    <option selected="selected" value=""></option>
                                 </select>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-10">
               <div class="box box-info">
                  <div class="box-header with-border">
                     <h3 class="box-title">Loan Details </h3>
                  </div>
                  <div class="box-body">
                     <div class="col-md-6">
                        <div class="form-group row">
                           <label class="col-sm-4 control-label">Loan Date <strong style="color: Red">*</strong></label>
                           <div class="col-sm-8">
                              <div class="input-group date">
                                 <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                 </div>
                                 <input name="loanDate" type="text" value="01/08/2022" id="loanDate="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                              </div>
                              <span id="loanDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Loan Date</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label class="col-sm-4 control-label">Select Member <strong style="color: Red">*</strong></label>
                           <div class="col-sm-8">
                              <select name="searchMemberCode" id="searchMemberCode" 
                              onchange="javascript:displayMemberDetails()" class="form-control select2" style="width: 100%;">
                                </select>
                              <span id="searchMemberCodeMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Member Code</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label class="col-sm-4 control-label">Relative
                           Details <strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="relativeDetails" type="text"
                                 readonly="readonly" id="relativeDetails"
                                 class="form-control"
                                 PlaceHolder="Enter Relative Name &amp; Relation" /> <span
                                 id="relativeDetailsMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Relative Name & Relation</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtDOB" class="col-sm-4 control-label">DOB
                           <strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-5">
                              <div class="input-group date">
                                 <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                 </div>
                                 <input name="dob" type="text" value="01/08/2022"
                                    readonly="readonly" id="dob" class="form-control"
                                    data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
                                    data-mask="" />
                              </div>
                              <span id="dobMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Relative Name & Relation</span>
                           </div>
                           <div class="col-sm-3">
                              <input name="age" type="text" value="0" maxlength="2"
                                 readonly="readonly" id="age" class="form-control"
                                 Placeholder="Enter Age"
                                 onkeypress="return isNumberOnlyKey(this, event);"
                                 autocomplete="off" /> <span id="ageMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Age</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtPhoneno" class="col-sm-4 control-label">Mobile
                           No <strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="phoneno" type="text" maxlength="10"
                                 readonly="readonly" id="phoneno" class="form-control"
                                 Placeholder="Enter Mobile No" autocomplete="off"
                                 onkeypress="return isNumberOnlyKey(this, event);" /> <span
                                 id="phonenoMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Phone No</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtSMSStatus" class="col-sm-4 control-label">SMS
                           Status </label>
                           <div class="col-sm-8">
                              <input name="smsStatus" type="text" readonly="readonly"
                                 id="smsStatus" class="form-control"
                                 PlaceHolder="Enter SMS Status" /> <span id="smsStatusMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Phone No</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtAddress" class="col-sm-4 control-label">Address
                           <strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <textarea name="address" rows="2" cols="20"
                                 readonly="readonly" id="address" class="form-control"
                                 Placeholder="Enter Addess">
                              </textarea>
                              <span id="addressMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Address</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtPin" class="col-sm-4 control-label">Pin
                           Code <strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="pin" type="text" maxlength="6"
                                 readonly="readonly" id="pin" class="form-control"
                                 Placeholder="Enter Pincode" /> <span id="pinMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              PIN</span>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group row">
                           <label class="col-sm-4 control-label">Branch Name <strong
                              style="color: Red">*</strong></label>
                           <div class="col-sm-8">
                              <select name="cspName" id="cspName" class="form-control"
                                 style="width: 100%;">
                                 <option value="001">Main Office - 001</option>
                              </select>
                              <span id="cspNameMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              PIN</span>
                           </div>
                        </div>
                        <div id="ContentPlaceHolder1_updtpnl">
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Loan Plan Name
                              <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <select name="loanPlanName" id="loanPlanName"
                                    class="form-control" style="width: 100%;" onchange="javascript:displayLoanMasterDetails()">
                                 </select> <span id="loanPlanNameMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 PIN</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtLoanROI" class="col-sm-4 control-label">Loan
                              Type <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <input name="loanType" type="text" readonly="readonly"
                                    id="loanType" class="form-control" PlaceHolder="Loan Type" />
                                 <span id="loanTypeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 PIN</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="ddlPlanTerm" class="col-sm-4 control-label">Plan
                              Term <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <select name="planTerm" id="planTerm" class="form-control"
                                    style="width: 100%;">
                                 </select> <span id="planTermMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 PIN</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="ddlLoanMode" class="col-sm-4 control-label">Loan
                              Mode <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-3">
                                 <input name="mode" type="text" readonly="readonly"
                                    id="mode" class="form-control" PlaceHolder="Enter Mode" />
                                 <span id="modeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Mode</span>
                              </div>
                              <label class="col-sm-2 control-label">ROI(%)</label>
                              <div class="col-sm-3">
                                 <input name="loanROI" type="text" readonly="readonly"
                                    id="loanROI" class="form-control"
                                    PlaceHolder="Enter Loan ROI" /> <span id="loanROIMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan ROI</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Loan Amount <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-8">
                                 <input name="loanAmount" type="text" id="loanAmount"
                                    class="form-control" PlaceHolder="Enter Loan Amount"
                                    onpaste="return false" autocomplete="off" /> <span
                                    id="loanAmountMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Amount</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtROIType" class="col-sm-4 control-label">ROI
                              Type <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <input name="ROIType" type="text" readonly="readonly"
                                    id="ROIType" class="form-control"
                                    PlaceHolder="Enter ROI Type" /> <span id="ROITypeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 ROI Type</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtEMIAmount" class="col-sm-4 control-label">EMI
                              Amount <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <input name="emiAmount" type="text" readonly="readonly"
                                    id="emiAmount" class="form-control"
                                    PlaceHolder="Enter EMI Amount" /> <span id="emiAmountMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 EMI Amount</span>
                              </div>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtLoanPurpose" class="col-sm-4 control-label">Loan
                           Purpose <strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="loanPurpose" type="text" id="loanPurpose"
                                 class="form-control" PlaceHolder="Enter Loan Purpose" /> <span
                                 id="loanPurposeMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Loan Purpose</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-2">
               <div class="box box-success">
                  <div class="box-header with-border">
                     <h3 class="box-title">Photo</h3>
                  </div>
                  <div class="box-body">
                     <div class="col-md-3">
                        <div class="form-group">
                           <div class="text-center">
                              <img id="ContentPlaceHolder1_ImageApplicant"
                                 class="profile-user-img" src="dist/img/photo.jpg"
                                 style="width: 110px;" />
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="box box-success">
                  <div class="box-header with-border">
                     <h3 class="box-title">Signature</h3>
                  </div>
                  <div class="box-body">
                     <div class="col-md-3">
                        <div class="form-group">
                           <div class="text-center">
                              <img id="ContentPlaceHolder1_ImageSignature"
                                 class="profile-user-img" src="dist/img/sign.jpg"
                                 style="height: 70px; width: 115px;" />
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div id="ContentPlaceHolder1_uppnlGold">
               <div class="col-md-10">
                  <div class="box box-warning">
                     <div class="box-header with-border">
                        <h3 class="box-title">Gold/Silver Details</h3>
                     </div>
                     <div class="box-body">
                        <div class="col-md-6">
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Karat <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-8">
                                 <select name="goldRateType" id="goldRateType"
                                    class="form-control" style="width: 100%;">
                                    <option selected="selected" value="24K">24K</option>
                                    <option value="22K">22K</option>
                                    <option value="20K">20K</option>
                                    <option value="18K">18K</option>
                                 </select>
                                 <span id="goldRateTypeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Item Type <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-4">
                                 <select name="itemType" id="itemType" class="form-control"
                                    style="width: 100%;">
                                    <option selected="selected" value="Gold">Gold</option>
                                    <option value="Silver">Silver</option>
                                 </select>
                                 <span id="itemTypeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                              <div class="col-sm-4">
                                 <input name="todayRate" type="text" value="5200"
                                    readonly="readonly" id="todayRate" class="form-control" />
                                 <span id="todayRateMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Item Name <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-8">
                                 <select name="itemName" id="itemName" class="form-control"
                                    style="width: 100%;">
                                 </select> <span id="itemNameMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Locker
                              Location <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <select name="lockerLoc" id="lockerLoc"
                                    class="form-control" style="width: 100%;">
                                 </select> <span id="lockerLocMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtPhoneno" class="col-sm-4 control-label">Purity
                              <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <select name="purity" id="purity" class="form-control"
                                    style="width: 100%;">
                                 </select> <span id="purityMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Item Qty. <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-2">
                                 <input name="itemQty" type="text" id="itemQty"
                                    class="form-control" onpaste="return false" /> <span
                                    id="itemQtyMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                              <label class="col-sm-3 control-label">Item Wt. <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-3">
                                 <input name="grossWt" type="text" id="grossWt"
                                    class="form-control" onpaste="return false"
                                    autocomplete="off" /> <span id="grossWtMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Gross Wt. <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-2">
                                 <input name="gwt" type="text" readonly="readonly" id="gwt"
                                    class="form-control" onpaste="return false"
                                    onkeypress="return isNumberKey(this, event);"
                                    autocomplete="off" /> <span id="gwtMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                              <label class="col-sm-3 control-label">Stone Wt. <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-3">
                                 <input name="stonewt" type="text" id="stonewt"
                                    class="form-control" onpaste="return false"
                                    autocomplete="off" /> <span id="stonewtMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Net Wt. <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-8">
                                 <input name="netWt" type="text" readonly="readonly"
                                    id="netWt" class="form-control" onpaste="return false"
                                    onkeypress="return isNumberKey(this, event);"
                                    autocomplete="off" /> <span id="netWtMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Market
                              Valuation</label>
                              <div class="col-sm-8">
                                 <input name="itemRate" type="text" readonly="readonly"
                                    id="itemRate" class="form-control" onpaste="return false"
                                    onkeypress="return isNumberKey(this, event);"
                                    autocomplete="off" /> <span id="itemRateMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Eligible Loan<strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-4">
                                 <input name="eligibleLoan" type="text" readonly="readonly"
                                    id="eligibleLoan" class="form-control"
                                    onpaste="return false"
                                    onkeypress="return isNumberKey(this, event);"
                                    autocomplete="off" /> <span id="eligibleLoanMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                              <!--  <div class="col-sm-4">
                                 <button type="button"
                                  name="ctl00$ContentPlaceHolder1$btnAddItem"
                                  value="Add Queue" id="ContentPlaceHolder1_btnAddItem"
                                  class="btn btn-success pull-right">Add Queue</button>
                                 </div>-->
                           </div>
                        </div>
                     </div>
                     <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>
                        <div id="ContentPlaceHolder1_pnlData"
                           style="height: 160px; overflow-y: scroll;">
                           <div></div>
                        </div>
                     </div>
                     <div class="box-body">
                        <div class="col-md-3">
                           <div class="form-group">
                              <label>Net Qty.</label> <input name="netQty" type="text"
                                 readonly="readonly" id="netQty" class="form-control" /> <span
                                 id="netQtyMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Loan Purpose</span>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="form-group">
                              <label>Total Item Wt.</label> <input name="totalGrossWt"
                                 type="text" readonly="readonly" id="totalGrossWt"
                                 class="form-control" /> <span id="totalGrossWtMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Loan Purpose</span>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="form-group">
                              <label>Total Net Wt.</label> <input name="totalNetWt"
                                 type="text" readonly="readonly" id="totalNetWt"
                                 class="form-control" /> <span id="totalNetWtMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Loan Purpose</span>
                           </div>
                        </div>
                        <div class="col-md-3">
                           <div class="form-group">
                              <label>Eligible Loan</label> <input name="totalEligibleAmt"
                                 type="text" readonly="readonly" id="totalEligibleAmt"
                                 class="form-control" /> <span id="totalEligibleAmtMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Loan Purpose</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-2">
               <div class="box box-success">
                  <div class="box-header with-border">
                     <h3 class="box-title">Gold Item</h3>
                  </div>
                  <div class="box-body">
                     <div class="col-md-3">
                        <div class="form-group">
                           <div class="text-center">
                              <img id="goldItem" class="profile-user-img"
                                 src="dist/img/photo.jpg" style="width: 110px;" /> <span
                                 id="goldItemMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Loan Purpose</span>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="text-center">
                              <input type="file" name="fileGold"
                                 id="ContentPlaceHolder1_fileGold" />
                              <script type="text/javascript">
                                 function readURL2(input) {
                                     if (input.files && input.files[0]) {
                                         var reader = new FileReader();
                                 
                                         reader.onload = function (e) {
                                             $('#ContentPlaceHolder1_imgGoldItem').attr('src', e.target.result);
                                         }
                                 
                                         reader.readAsDataURL(input.files[0]);
                                     }
                                 }
                                 $("#ContentPlaceHolder1_fileGold").change(function () {
                                     readURL2(this);  
                                 });
                              </script>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-10">
               <div class="box box-success">
                  <div class="box-body">
                     <div id="ContentPlaceHolder1_upguardian">
                        <div class="col-md-6">
                           <div class="form-group row text-center">
                              <div class="box-header with-border">
                                 <h3 class="box-title">Guarantor Details</h3>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtGuarantorMember2"
                                 class="col-sm-4 control-label">Member Code </label>
                              <div class="col-sm-8">
                                 <input name="guarantorCode" type="text" guarantorCode
                                    id="guarantorCode" class="form-control"
                                    Placeholder="Enter Guarantor Member 2" /> <span
                                    id="guarantorCodeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtMembersRelativesNameRelationGu"
                                 class="col-sm-4 control-label">Guarantor Name </label>
                              <div class="col-sm-8">
                                 <input name="guarantorName" type="text" readonly="readonly"
                                    id="guarantorName" class="form-control" /> <span
                                    id="guarantorNameMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtAddressGuarantor"
                                 class="col-sm-4 control-label">Address </label>
                              <div class="col-sm-8">
                                 <input name="addressGuarantor" type="text"
                                    readonly="readonly" id="addressGuarantor"
                                    class="form-control" Placeholder="Enter Address" /> <span
                                    id="addressGuarantorMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtPincodeGuarantor"
                                 class="col-sm-4 control-label">Pin Code </label>
                              <div class="col-sm-8">
                                 <input name="pincodeGuarantor" type="text"
                                    readonly="readonly" id="pincodeGuarantor"
                                    class="form-control" PlaceHolder="Enter Pin Code" /> <span
                                    id="pincodeGuarantorMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtphone" class="col-sm-4 control-label">Phone
                              </label>
                              <div class="col-sm-8">
                                 <input name="phone" type="text" readonly="readonly"
                                    id="phone" class="form-control" Placeholder="Enter Phone" />
                                 <span id="phoneMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Security Type
                              </label>
                              <div class="col-sm-8">
                                 <select name="securityType" id="securityType"
                                    class="form-control" style="width: 100%;">
                                    <option value="Select">Select</option>
                                    <option value="Loan Against Cheque">Loan Against
                                       Cheque
                                    </option>
                                    <option value="Loan Against Gold">Loan Against
                                       Gold
                                    </option>
                                    <option value="Loan Against Silver">Loan Against
                                       Silver
                                    </option>
                                    <option value="Loan Against Deposit">Loan Against
                                       Deposit
                                    </option>
                                    <option value="Any Others">Any Others</option>
                                 </select>
                                 <span id="securityTypeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div id="ContentPlaceHolder1_upcoap">
                        <div class="col-md-6">
                           <div class="form-group row text-center">
                              <div class="box-header with-border">
                                 <h3 class="box-title">Co-Applicant Details</h3>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtCoApplicantName"
                                 class="col-sm-4 control-label">Member Code </label>
                              <div class="col-sm-8">
                                 <input name="coApplicantCode" type="text"
                                    id="coApplicantCode" class="form-control"
                                    Placeholder="Enter Co-Applicant Member Code" /> <span
                                    id="coApplicantCodeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtMemberRelativesName"
                                 class="col-sm-4 control-label">Name</label>
                              <div class="col-sm-8">
                                 <input name="memberRelativesName" type="text"
                                    readonly="readonly" id="memberRelativesName"
                                    class="form-control" Placeholder="Enter Co-Applicant Name" />
                                 <span id="memberRelativesNameMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtAddressco" class="col-sm-4 control-label">Address
                              </label>
                              <div class="col-sm-8">
                                 <input name="addressco" type="text" readonly="readonly"
                                    id="addressco" class="form-control"
                                    Placeholder="Enter Address" /> <span id="addresscoMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtPincodeco" class="col-sm-4 control-label">Pincode
                              </label>
                              <div class="col-sm-8">
                                 <input name="pincodeco" type="text" readonly="readonly"
                                    id="pincodeco" class="form-control"
                                    Placeholder="Enter Pincode" /> <span id="pincodecoMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtPhoneco" class="col-sm-4 control-label">Phone</label>
                              <div class="col-sm-8">
                                 <input name="phoneco" type="text" readonly="readonly"
                                    id="phoneco" class="form-control"
                                    Placeholder="Enter Phone" /> <span id="phonecoMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtSecurityDetails"
                                 class="col-sm-4 control-label">Security Details</label>
                              <div class="col-sm-8">
                                 <input name="securityDetails" type="text"
                                    id="securityDetails" class="form-control"
                                    Placeholder="Enter Security Details" /> <span
                                    id="securityDetailsMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Purpose</span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
         <div class="col-md-10">
            <div class="box box-danger">
               <div class="box-header with-border">
                  <h3 class="box-title">Deduction Details</h3>
               </div>
               <div class="box-body">
                  <div class="col-md-6">
                     <div id="ContentPlaceHolder1_uppnlde">
                        <div class="form-group row">
                           <label for="txtProcessingFee" class="col-sm-4 control-label">Processing
                           Fee<strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="processingFee" type="text" readonly="readonly"
                                 id="processingFee" class="form-control" /> <span
                                 id="processingFeeMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Loan Purpose</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtLegalAmt" class="col-sm-4 control-label">Legal
                           Amt<strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="legalAmt" type="text" readonly="readonly"
                                 id="legalAmt" class="form-control" /> <span
                                 id="legalAmtMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Loan Purpose</span>
                           </div>
                        </div>
                     </div>
                     <div id="ContentPlaceHolder1_uppnkad">
                        <div class="form-group row">
                           <label class="col-sm-4 control-label">Advisor/Collector
                           Code <strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="advisorCode" type="text" id="advisorCode"
                                 class="form-control"
                                 placeholder="Enter Advisor/Collector Code" /> <span
                                 id="advisorCodeMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Advisor/Collector Code</span>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div id="ContentPlaceHolder1_upduc">
                        <div class="form-group row">
                           <label for="txtGST" class="col-sm-4 control-label">GST<strong
                              style="color: Red">*</strong></label>
                           <div class="col-sm-8">
                              <input name="gst" type="text" readonly="readonly" id="gst"
                                 class="form-control" /> <span id="gstMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Advisor/Collector Code</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtInsuranceAmt" class="col-sm-4 control-label">Insurance
                           Amt<strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="insuranceAmt" type="text" readonly="readonly"
                                 id="insuranceAmt" class="form-control" /> <span
                                 id="insuranceAmtMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Advisor/Collector Code</span>
                           </div>
                        </div>
                        <div class="form-group row">
                           <label for="txtInsuranceAmt" class="col-sm-4 control-label">Valuation
                           Fees<strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="vFeesAmt" type="text" id="vFeesAmt"
                                 class="form-control" /> <span id="vFeesAmtMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Advisor/Collector Code</span>
                           </div>
                        </div>
                     </div>
                     <div id="ContentPlaceHolder1_uppnladname">
                        <div class="form-group row">
                           <label class="col-sm-4 control-label">Advisor/Collector
                           Name <strong style="color: Red">*</strong>
                           </label>
                           <div class="col-sm-8">
                              <input name="advisorName" type="text" readonly="readonly"
                                 id="advisorName" class="form-control"
                                 placeholder="Enter Advisor/Collector Name" /> <span
                                 id="advisorNameMsg"
                                 style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                              Advisor/Collector Name</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- End -->
               <div id="ContentPlaceHolder1_idApproval" class="row">
                  <div class="col-md-10">
                     <div class="box box-danger">
                        <div class="box-header with-border">
                           <h3 class="box-title">Approval Details </h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Approval Date <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input name="ctl00$ContentPlaceHolder1$txtApprovalDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtApprovalDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label for="txtProcessingFee" class="col-sm-4 control-label">Approval Status</label>
                                 <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtApprovalStatus" type="text" readonly="readonly" id="ContentPlaceHolder1_txtApprovalStatus" class="form-control" style="font-weight:bold;" />
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="box-footer">
                           <div class="row col-md-12">
                           <div class="box-footer">
                  <div class="row col-md-12">
                    <!-- <input type="submit" name="ctl00$ContentPlaceHolder1$btnNew"
                      value="New" id="ContentPlaceHolder1_btnNew"
                      class="btn btn-info pull-right margin-r-5" /> 
                    <button type="button" name="ctl00$ContentPlaceHolder1$btnSave"
                      value="Save" onclick="return validateGoldLoanApplciation()"
                      id="ContentPlaceHolder1_btnSave"
                      class="btn btn-success pull-right margin-r-5">Approve</button>-->
                  </div>
                </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
      </section>
      </div>
      <!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0.1
        </div>
        <strong>Copyright © 2020-2021 <a>
            <span id="lblCompanyName1">EQFI NIDHI LIMITED</span>
          </a>. </strong> All rights reserved.
      </footer>
      <div class="control-sidebar-bg"></div>
    </div>
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- InputMask -->
    <script src="plugins/input-mask/jquery.inputmask.js"></script>
    <script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <!-- date-range-picker -->
    <script src="bower_components/moment/min/moment.min.js"></script>
    <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap datepicker -->
    <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <!-- bootstrap color picker -->
    <script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
    <!-- bootstrap time picker -->
    <script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
    <!-- SlimScroll -->
    <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- iCheck 1.0.1 -->
    <script src="plugins/iCheck/icheck.min.js"></script>
    <!-- FastClick -->
    <script src="bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <!-- Select2 -->
    <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
  </form>
</body>
<!-- Dk/Admin/GroupLoanApproval.aspx?Type=Approval EDB D 09:27:12 GMT -->undefined</html>