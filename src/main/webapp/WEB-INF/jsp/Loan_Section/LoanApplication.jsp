<%@page import="com.society.application.model.LoanPlanMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="content-type" content="text/html;charset=utf-8" />
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <title>EQFI NIDHI LIMITED</title>
      <!-- Tell the browser to be responsive to screen width -->
      <meta
         content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
         name="viewport" />
      <!-- Bootstrap 3.3.7 -->
      <link rel="stylesheet"
         href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
      <!-- Font Awesome -->
      <link rel="stylesheet"
         href="bower_components/font-awesome/css/font-awesome.min.css" />
      <!-- Ionicons -->
      <link rel="stylesheet"
         href="bower_components/Ionicons/css/ionicons.min.css" />
      <!-- jvectormap -->
      <link rel="stylesheet"
         href="bower_components/jvectormap/jquery-jvectormap.css" />
      <!-- Theme style -->
      <link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
      <!-- daterange picker -->
      <link rel="stylesheet"
         href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
      <!-- bootstrap datepicker -->
      <link rel="stylesheet"
         href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
      <!-- iCheck for checkboxes and radio inputs -->
      <link rel="stylesheet" href="plugins/iCheck/all.css" />
      <script src="dist/js/customJs.js"></script>
      <!-- Select2 -->
      <link rel="stylesheet"
         href="bower_components/select2/dist/css/select2.min.css" />
      <!-- Theme style -->
      <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
      <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
      <link rel="stylesheet" href="dist/css/dashboard.css" />
      <link rel="shortcut icon" type="image/x-icon"
         href="../images/favicon.html" />
      <link rel="stylesheet" href="dist/css/lightbox.min.css" />
      <link rel="stylesheet" href="dist/css/qr.css" />
      <!-- Google Font -->
      <link rel="stylesheet"
         href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
      <style type="text/css">
         .switch {
         position: relative;
         display: inline-block;
         width: 78px;
         height: 36px;
         }
         .switch input {
         opacity: 0;
         }
         .slider {
         position: absolute;
         cursor: pointer;
         top: 0;
         left: 0;
         right: 0;
         bottom: 0;
         background-color: #ccc;
         -webkit-transition: .4s;
         transition: .4s;
         }
         .slider:before {
         position: absolute;
         content: "";
         height: 30px;
         width: 33px;
         left: 16px;
         bottom: 3px;
         background-color: white;
         -webkit-transition: .4s;
         transition: .4s;
         }
         input:checked+.slider {
         background-color: #08c;
         }
         input:focus+.slider {
         box-shadow: 0 0 1px #2196F3;
         }
         input:checked+.slider:before {
         -webkit-transform: translateX(26px);
         -ms-transform: translateX(26px);
         transform: translateX(26px);
         }
         /* Rounded sliders */
         .slider.round {
         border-radius: 34px;
         }
         .slider.round:before {
         border-radius: 50%;
         }
         /* profile pic */
         canvas {
         height: 175px;
         width: 135px;
         border-style: solid;
         border-width: 1px;
         border-color: black;
         }
      </style>
      <script type="text/javascript">
         function isNumberOnlyKey(txt, evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                 alert("Allow Only Numbers");
                 return false;
             }
         }
      </script>
      <script type="text/javascript">
         function isNumberKey(txt, evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode == 46) {
                 //Check if the text already contains the . character
                 if (txt.value.indexOf('.') === -1) {
                     return true;
                 } else {
                     return false;
                 }
             } else {
                 if (charCode > 31
         && (charCode < 48 || charCode > 57)) {
                     alert("Allow Only Numbers & Decimal");
                     return false;
                 }
             }
             return true;
         }
      </script>
       <script src="dist/js/customJs.js"></script>
<script src="dist/js/investmentSection.js"></script>
<script src="dist/js/loanModule.js"></script>
<script src="dist/js/goldLoanMaster.js"></script>
<script src="dist/js/groupMasterUtilsJs.js"></script>
<script src="dist/js/LoanModuleJs.js"></script>
   </head>
   <body class="skin-blue sidebar-mini"
      style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
      cz-shortcut-listen="true"
      onload="callGetAllMasterData();getAllLoanPlanName();getAllItemMasterName();getAllILockerName();getAllPurityMasterName();fetchAllMember()">
      <%
         String status = (String)request.getAttribute("status");
         if(status!=null && "success".equals(status)){
          %>
      <script>
         alert("Saved Successfully");
      </script>
      <%
         }else{
          
         }
         %>
      <form method="post"
         action="updateLoan"
         id="form1"  
         name="updateLoanDetails"
         modelAttribute="updateLoan">
   
      <script type="text/javascript">
         //<![CDATA[
         function WebForm_OnSubmit() {
         if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
         return true;
         }
         //]]>
         
         function callback(ids){
          	var input = {
                      "id": ids
              }
          	$.ajax({
                  type:"post",
                  contentType: "application/json",
                  data: JSON.stringify(input),
                  url: 'getLoanDetails',
                  asynch: false,
                  success: function(data) {
                      document.getElementById("ContentPlaceHolder1_txtLoanType").value = data.loanType;
                      document.getElementById("ContentPlaceHolder1_txtLoanROI").value = data.roi;
                      document.getElementById("ContentPlaceHolder1_txtROIType").value = data.roiType;
                  } ,
          	    error: function(){
          	    	alert("Invalid Input");
          	    }
              });
          	
          }
          
          
          function inputLoanAmount(){
         	var totalLoanAmount= document.getElementById("ContentPlaceHolder1_txtLoanAmount").value;
         	 //alert("totalLoanAmount>>>"+totalLoanAmount);
         	 
          }
          
          
      </script>
      <div
         style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
      <!-- Header Start-->
      <jsp:include page="../menu.jsp" />
      <!-- Header End -->
      <!-- Left side column. contains the logo and sidebar -->
      <!-- Aside Menu Start-->
      <jsp:include page="../asideMenu.jsp" />
      <!-- Aside Menu end -->
      <script type="text/javascript">
         //<![CDATA[
         Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
         //]]>
      </script>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="min-height: 1105.75px;">
         <section class="content-header">
            <h1 id="ContentPlaceHolder1_IdHeader">Loan Application</h1>
            <ol class="breadcrumb">
               <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
               <li><a href="#">Dashboard</a></li>
               <li class="active">Loan Details</li>
            </ol>
         </section>
         <section class="content">
            <div class="row">
               <div class="col-md-10">
                  <div class="box box-info">
                     <div class="box-header with-border">
                        <h3 class="box-title">Loan Details</h3>
                     </div>
                     <div class="box-body">
                        <div class="col-md-6">
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Loan Date <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-8">
                                 <div class="input-group date">
                                    <div class="input-group-addon">
                                       <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="loanDate"
                                       type="text" value="01/08/2022"
                                       id="loanDate" class="form-control"
                                       data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
                                       data-mask="" />
                                 </div>
                                 <span id="ContentPlaceHolder1_RequiredFieldValidator5"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Loan Date</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Search Member <strong
                                 style="color: Red">*</strong></label>
                              <div class="col-sm-8">
                                 <select name="searchMemberCode" id="searchMemberCode"
                                       onchange="javascript:displayMemberDetails()"
                                       class="form-control select2" style="width: 100%;">
                                 <span
                                    id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
                                 Member Code</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label class="col-sm-4 control-label">Relative
                              Details <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <input name="relativeDetails"
                                    type="text" readonly="readonly"
                                    id="relativeDetails"
                                    class="form-control"
                                    PlaceHolder="Enter Relative Name &amp; Relation" /> <span
                                    id="ContentPlaceHolder1_RequiredFieldValidatorBranchCode"
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
                                    <input name="dob" type="text"
                                       value="01/08/2022" readonly="readonly"
                                       id="dob" class="form-control"
                                       data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
                                       data-mask="" />
                                 </div>
                              </div>
                              <div class="col-sm-3">
                                 <input name="age" type="text"
                                    value="0" maxlength="2" readonly="readonly"
                                    id="age" class="form-control"
                                    Placeholder="Enter Age"
                                    onkeypress="return isNumberOnlyKey(this, event);"
                                    autocomplete="off" /> <span
                                    id="ContentPlaceHolder1_RequiredFieldValidator12"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Age</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtPhoneno" class="col-sm-4 control-label">Mobile
                              No <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <input name="phoneno"
                                    type="text" maxlength="10" readonly="readonly"
                                    id="phoneno" class="form-control"
                                    Placeholder="Enter Mobile No" autocomplete="off"
                                    onkeypress="return isNumberOnlyKey(this, event);" /> <span
                                    id="ContentPlaceHolder1_RequiredFieldValidator8"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Phone No</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtSMSStatus" class="col-sm-4 control-label">SMS
                              Status </label>
                              <div class="col-sm-8">
                                 <input name="smsStatus"
                                    type="text" readonly="readonly"
                                    id="smsStatus" class="form-control"
                                    PlaceHolder="Enter SMS Status" />
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtAddress" class="col-sm-4 control-label">Address
                              <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <textarea name="address"
                                    rows="2" cols="20" readonly="readonly"
                                    id="address" class="form-control"
                                    Placeholder="Enter Addess">
                                 </textarea>
                                 <span id="ContentPlaceHolder1_RequiredFieldValidator3"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                 Address</span>
                              </div>
                           </div>
                           <div class="form-group row">
                              <label for="txtPin" class="col-sm-4 control-label">Pin
                              Code <strong style="color: Red">*</strong>
                              </label>
                              <div class="col-sm-8">
                                 <input name="pin" type="text"
                                    maxlength="6" readonly="readonly"
                                    id="pin" class="form-control"
                                    Placeholder="Enter Pincode" /> <span
                                    id="ContentPlaceHolder1_RequiredFieldValidator4"
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
                                 <select name="cspName"
                                    id="cspName" class="form-control"
                                    style="width: 100%;">
                                    <option value="001">Main Office - 001</option>
                                 </select>
                              </div>
                           </div>
                           <div id="ContentPlaceHolder1_updtpnl">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Loan Plan Name
                                 <strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-8">
                                   <select name="loanPlanName" id="loanPlanName"
                                          class="form-control" style="width: 100%;"
                                          onchange="javascript:displayLoanMasterDetails()">
                                       </select>
                                 
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtLoanROI" class="col-sm-4 control-label">Loan
                                 Type <strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="loanType"
                                       type="text" readonly="readonly"
                                       id="loanType" class="form-control"
                                       PlaceHolder="Loan Type" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="ddlPlanTerm" class="col-sm-4 control-label">Plan
                                 Term <strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-8">
                                    <select name="planTerm"
                                       id="planTerm" class="form-control"
                                       style="width: 100%;">
                                    </select>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="ddlLoanMode" class="col-sm-4 control-label">Loan
                                 Mode <strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-3">
                                    <input name="mode" type="text"
                                       readonly="readonly" id="mode"
                                       class="form-control" PlaceHolder="Enter Mode" /> <span
                                       id="ContentPlaceHolder1_RequiredFieldValidator1"
                                       style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                    Mode</span>
                                 </div>
                                 <label class="col-sm-2 control-label">ROI(%)</label>
                                 <div class="col-sm-3">
                                    <input name="loanROI"
                                       type="text" readonly="readonly"
                                       id="loanROI" class="form-control"
                                       PlaceHolder="Enter Loan ROI" /> <span
                                       id="ContentPlaceHolder1_RequiredFieldValidatorLoanROI"
                                       style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                    Loan ROI</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Loan Amount <strong
                                    style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="loanAmount"
                                       type="text"
                                       onkeypress="inputLoanAmount()"
                                       id="loanAmount"
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
                                    <input name="ROIType"
                                       type="text" readonly="readonly"
                                       id="ROIType" class="form-control"
                                       PlaceHolder="Enter ROI Type" /> <span
                                       id="ContentPlaceHolder1_RequiredFieldValidatortxtROIType"
                                       style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                    ROI Type</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtEMIAmount" class="col-sm-4 control-label">EMI
                                 Amount <strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="emiAmount"
                                       type="text" readonly="readonly"
                                       id="emiAmount" class="form-control"
                                       PlaceHolder="Enter EMI Amount" /> <span
                                       id="ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount"
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
                                 <input name="loanPurpose"
                                    type="text" id="loanPurpose"
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
           
            </div>
            <div id="ContentPlaceHolder1_upnlLAD"></div>
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
                                    <input name="guarantorCode"
                                       type="text"
                                       id="guarantorCode"
                                       class="form-control"
                                       Placeholder="Enter Guarantor Member 2" />
                                    <span
                                    id="guarantorCodeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtMembersRelativesNameRelationGu"
                                    class="col-sm-4 control-label">Guarantor Name </label>
                                 <div class="col-sm-8">
                                    <input name="guarantorName"
                                       type="text" readonly="readonly"
                                       id="guarantorName"
                                       class="form-control" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtAddressGuarantor"
                                    class="col-sm-4 control-label">Address </label>
                                 <div class="col-sm-8">
                                    <input name="addressGuarantor"
                                       type="text" readonly="readonly"
                                       id="addressGuarantor"
                                       class="form-control" Placeholder="Enter Address" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtPincodeGuarantor"
                                    class="col-sm-4 control-label">Pin Code </label>
                                 <div class="col-sm-8">
                                    <input name="pincodeGuarantor"
                                       type="text" readonly="readonly"
                                       id="pincodeGuarantor"
                                       class="form-control" PlaceHolder="Enter Pin Code" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtphone" class="col-sm-4 control-label">Phone
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="guarantorphone"
                                       type="text" readonly="readonly"
                                       id="guarantorphone" class="form-control"
                                       Placeholder="Enter Phone" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Security Type
                                 </label>
                                 <div class="col-sm-8">
                                    <select name="securityType"
                                       id="securityType"
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
                                    <input name="coApplicantCode"
                                       type="text"
                                       id="coApplicantCode"
                                       class="form-control"
                                       Placeholder="Enter Co-Applicant Member Code" />
                                        <span
                                    id="coApplicantCodeMsg"
                                    style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtMemberRelativesName"
                                    class="col-sm-4 control-label">Name</label>
                                 <div class="col-sm-8">
                                    <input
                                       name="memberRelativesName"
                                       type="text" readonly="readonly"
                                       id="memberRelativesName"
                                       class="form-control" Placeholder="Enter Co-Applicant Name" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtAddressco" class="col-sm-4 control-label">Address
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="addressco"
                                       type="text" readonly="readonly"
                                       id="addressco" class="form-control"
                                       Placeholder="Enter Address" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtPincodeco" class="col-sm-4 control-label">Pincode
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="pincodeco"
                                       type="text" readonly="readonly"
                                       id="pincodeco" class="form-control"
                                       Placeholder="Enter Pincode" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtPhoneco" class="col-sm-4 control-label">Phone</label>
                                 <div class="col-sm-8">
                                    <input name="phoneco"
                                       type="text" readonly="readonly"
                                       id="phoneco" class="form-control"
                                       Placeholder="Enter Phone" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtSecurityDetails"
                                    class="col-sm-4 control-label">Security Details</label>
                                 <div class="col-sm-8">
                                    <input name="securityDetails"
                                       type="text" id="securityDetails"
                                       class="form-control" Placeholder="Enter Security Details" />
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
                                    <input name="processingFee"
                                       type="text" readonly="readonly"
                                       id="processingFee"
                                       class="form-control" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtLegalAmt" class="col-sm-4 control-label">Legal
                                 Amt<strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="legalAmt"
                                       type="text" readonly="readonly"
                                       id="legalAmt" class="form-control" />
                                 </div>
                              </div>
                           </div>
                           <div id="ContentPlaceHolder1_uppnkad">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Advisor/Collector
                                 Code <strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="advisorCode"
                                       type="text"
                                       id="advisorCode"
                                       class="form-control"
                                       placeholder="Enter Advisor/Collector Code" /> <span
                                       id="advisorCodeMsg"
                                       style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
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
                                    <input name="GST" type="text"
                                       readonly="readonly" id="GST"
                                       class="form-control" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtInsuranceAmt" class="col-sm-4 control-label">Insurance
                                 Amt<strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="insuranceAmt"
                                       type="text" readonly="readonly"
                                       id="insuranceAmt"
                                       class="form-control" />
                                 </div>
                              </div>
                           </div>
                           <div id="ContentPlaceHolder1_uppnladname">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Advisor/Collector
                                 Name <strong style="color: Red">*</strong>
                                 </label>
                                 <div class="col-sm-8">
                                    <input name="advisorName"
                                       type="text" readonly="readonly"
                                       id="advisorName"
                                       class="form-control"
                                       placeholder="Enter Advisor/Collector Name" /> <span
                                       id="advisorName"
                                       style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
                                    Advisor/Collector Name</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="box-footer">
                        <div class="row col-md-12">
                           <button
                              type="button" name="btnSave"
                              value="Save"
                              id="btnSave"
                              onclick="return validateLoanApplciation()"
                              class="btn btn-success pull-right margin-r-5">Save</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </div>
      <!-- /.content-wrapper -->
      <jsp:include page="../footer.jsp" />
   </body>
</html>