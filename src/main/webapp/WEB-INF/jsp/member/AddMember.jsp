<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.RelativeRelationMaster"%>
<jsp:include page="../header.jsp" />
<%
   String status = (String)request.getAttribute("status");
   if(status!=null &&  status.equals("saved")){
   	%>
<script>
   alert("Added Successfully");
</script>
<%
   } 
   %>
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; 
   background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true" onload="callGetAllMasterData()">
   <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
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
         <h1 id="ContentPlaceHolder1_IdHeader">Add Member</h1>
         <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Member</li>
         </ol>
      </section>
      <section class="content">
         <div class="row">
            <div class="col-md-12">
               <div class="box box-success">
                  <div class="box-header with-border">
                     <h3 class="box-title">Member Details</h3>
                  </div>
                  <form action="addMember" method="post" modelAttribute="user">
                     <div class="form-horizontal">
                        <div class="box-body">
                           <div class="col-md-6">
                              <div id="ContentPlaceHolder1_idverify" class="form-group row">
                                 <label class="col-sm-4 control-label" style="color: green;">Verify With<strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <select name="verifyWithAadhar"
                                       id="verifyWithAadhar" class="form-control" style="width: 100%;">
                                       <option selected="selected" value="Without Aadhar">Without Aadhar</option>
                                       <option value="With Aadhar">With Aadhar</option>
                                    </select>
                                 </div>
                              </div>
                              <div class="form-group">
                                 <label class="col-sm-4 control-label">Registration Date <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input name="registrationDate" type="text" value="01/08/2022" id="registrationDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator5" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Registration Date</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Member Name <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-3">
                                    <select name="memberNamePrefix" id="memberNamePrefix" class="form-control" style="width: 100%;">
                                       <option value="Mr.">Mr.</option>
                                       <option value="Ms.">Ms.</option>
                                       <option value="Mrs.">Mrs.</option>
                                       <option value="Smt.">Smt.</option>
                                       <option value="Md.">Md.</option>
                                    </select>
                                 </div>
                                 <div class="col-sm-5">
                                    <input name="memberName" type="text" id="memberName" class="form-control" Placeholder="Enter Member Name" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator2" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Applicant Name</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtRelativeName" class="col-sm-4 control-label">Relative Name</label>
                                 <div class="col-sm-8">
                                    <input name="relativeName" type="text" id="relativeName" class="form-control" Placeholder="Enter Relative Name" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="drpRelativeRelation" class="col-sm-4 control-label">Relative Relation</label>
                                 <div class="col-sm-8">
                                    <select name="relativeRelation" id="relativeRelation" class="form-control" style="width: 100%;">
                                    </select>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="drpGender" class="col-sm-4 control-label">Gender</label>
                                 <div class="col-sm-8">
                                    <select name="gender" id="ContentPlaceHolder1_ddlGender" class="form-control" style="width: 100%;">
                                       <option value="Male">Male</option>
                                       <option value="Female">Female</option>
                                    </select>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtDOB" class="col-sm-4 control-label">DOB <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-5">
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input name="dob" type="text" value="01/08/2022" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtDOB\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtDOB" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>
                                 </div>
                                 <div class="col-sm-3">
                                    <input name="age" type="text" value="0" maxlength="2" id="ContentPlaceHolder1_txtAge" class="form-control" Placeholder="Enter Age" onkeypress="return isNumberOnlyKey(this, event);" autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator12" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Age</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Martial Status</label>
                                 <div class="col-sm-8">
                                    <select name="maritalStatus" id="maritalStatus" class="form-control" style="width: 100%;">
                                    </select>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtAddress" class="col-sm-4 control-label">Address <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <textarea name="address" rows="2" cols="20" id="ContentPlaceHolder1_txtAddress" class="form-control" Placeholder="Enter Addess">
                                    </textarea>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator3" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Address</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtDistrict" class="col-sm-4 control-label">District <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="district" type="text" id="ContentPlaceHolder1_txtDistrict" class="form-control" Placeholder="Enter District" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter District</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="drpState" class="col-sm-4 control-label">State <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <select name="state" id="state" class="form-control select2" style="width: 100%;">
                                    </select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator11" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select State</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Branch Name <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <select name="branchName" id="branchName" class="form-control select2" style="width: 100%;">
                                    </select>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label for="txtPin" class="col-sm-4 control-label">Pin Code <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="pinCode" type="text" maxlength="6" id="ContentPlaceHolder1_txtPin" class="form-control" Placeholder="Enter Pincode" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator4" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter PIN</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtPin" class="col-sm-4 control-label">Aadhar No. <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="aadharNo" type="text" maxlength="12" id="ContentPlaceHolder1_txtAadharNo" class="form-control" Placeholder="Enter Aadhar No." onkeypress="return isNumberOnlyKey(this, event);" autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator9" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Aadhar No</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtPin" class="col-sm-4 control-label">PAN No.</label>
                                 <div class="col-sm-6">
                                    <input name="pan" type="text" maxlength="10" id="ContentPlaceHolder1_txtPAN" class="form-control" Placeholder="Enter PAN No." autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator15" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter PAN No</span>
                                    <div id="ContentPlaceHolder1_Div_PanPart" style="display: none;">&nbsp;</div>
                                 </div>
                                 <div class="col-sm-2">
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnPANverify" value="Verify" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnPANverify&quot;, &quot;&quot;, true, &quot;P&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolder1_btnPANverify" class="btn btn-danger verify pull-right" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtPin" class="col-sm-4 control-label">Voter No.</label>
                                 <div class="col-sm-6">
                                    <input name="voterNo" type="text" maxlength="10" id="ContentPlaceHolder1_txtVoterNo" class="form-control" Placeholder="Enter Voter No." autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator16" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Voter No</span>
                                    <div id="ContentPlaceHolder1_Div_VoterPart" style="display: none;">&nbsp;</div>
                                 </div>
                                 <div class="col-sm-2">
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnvoterverify" value="Verify" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnvoterverify&quot;, &quot;&quot;, true, &quot;K&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolder1_btnvoterverify" class="btn btn-danger verify pull-right" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtPhoneno" class="col-sm-4 control-label">Mobile No <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="phoneno" type="text" maxlength="10" id="ContentPlaceHolder1_txtPhoneno" class="form-control" Placeholder="Enter Mobile No" autocomplete="off" onkeypress="return isNumberOnlyKey(this, event);" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator8" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Phone No</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtEmailid" class="col-sm-4 control-label">Email ID </label>
                                 <div class="col-sm-8">
                                    <input name="emailid" type="text" id="ContentPlaceHolder1_txtEmailid" class="form-control" Placeholder="Enter Email ID" />
                                    <span id="ContentPlaceHolder1_Reg1" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Invalid Email ID</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtOccupation" class="col-sm-4 control-label">Occupation</label>
                                 <div class="col-sm-8">
                                    <input name="occupation" type="text" id="ContentPlaceHolder1_txtOccupation" class="form-control" Placeholder="Enter Occupation" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtEducation" class="col-sm-4 control-label">Education</label>
                                 <div class="col-sm-8">
                                    <input name="education" type="text" id="ContentPlaceHolder1_txtEducation" class="form-control" Placeholder="Enter Education" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtIntroMCode" class="col-sm-4 control-label">Intro.M Code</label>
                                 <div class="col-sm-8">
                                    <input name="introMCode" type="text" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$TxtintroMCode\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_TxtintroMCode" class="form-control" Placeholder="Enter Intro Member Code" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtIntroMName" class="col-sm-4 control-label">Intro.M Name</label>
                                 <div class="col-sm-8">
                                    <input name="introMName" type="text" readonly="readonly" id="ContentPlaceHolder1_TxtIntroMName" class="form-control" Placeholder="Enter Intro Member Name" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtIntroMName" class="col-sm-4 control-label">Photo(with aadhar)</label>
                                 <div class="col-sm-8">
                                    <img id="ContentPlaceHolder1_ImageApplicant" class="profile-user-img" src="dist/img/photo.jpg" style="width:110px;" />
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
               </div>
            </div>
         </div>
         <div class="row">
         <div class="col-md-12">
         <div class="box box-danger">
         <div class="box-header with-border">
         <h3 class="box-title">Nominee Details </h3>
         </div>
         <div class="form-horizontal">
         <div class="box-body">
         <div class="col-md-6">
         <div class="form-group row">
         <label for="txtNomineeName" class="col-sm-4 control-label">Nominee Name <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <input name="nomineeName" type="text" id="ContentPlaceHolder1_txtNomineeName" class="form-control" Placeholder="Enter Nominee Name" />
         <span id="ContentPlaceHolder1_RequiredFieldValidator7" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Nominee Name</span>
         </div>
         </div>
         <div class="form-group row">
         <label for="drpNomineeRelation" class="col-sm-4 control-label">Nominee Relation</label>
         <div class="col-sm-8">
         <select name="nRelation" id="nRelation" class="form-control" style="width: 100%;">
         </select>
         </div>
         </div>
         <div class="form-group row">
         <label for="txtNomineeAddress" class="col-sm-4 control-label">Nominee Address</label>
         <div class="col-sm-8">
         <input name="nomineeAddress" type="text" id="ContentPlaceHolder1_txtNomineeAddress" class="form-control" />
         </div>
         </div>
         <div class="form-group row">
         <label for="txtNomineeKycNumber" class="col-sm-4 control-label">Nominee KYC No.</label>
         <div class="col-sm-8">
         <input name="nomineeKycNumber" type="text" id="ContentPlaceHolder1_txtNomineeKycNumber" class="form-control" />
         </div>
         </div>
         </div>
         <div class="col-md-6">
         <div class="form-group row">
         <label for="txtNomineeMobileNo" class="col-sm-4 control-label">Nominee Mobile No.</label>
         <div class="col-sm-8">
         <input name="nomineeMobileNo" type="text" maxlength="10" id="ContentPlaceHolder1_txtNomineeMobileNo" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" />
         </div>
         </div>
         <div class="form-group row">
         <label for="txtNomineeAge" class="col-sm-4 control-label">Nominee Age.</label>
         <div class="col-sm-8">
         <input name="nomineeAge" type="text" maxlength="2" id="ContentPlaceHolder1_txtNomineeAge" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" />
         </div>
         </div>
         <div class="form-group row">
         <label for="TxtNomineePanNo" class="col-sm-4 control-label">Nominee Pan No.</label>
         <div class="col-sm-8">
         <input name="nomineePanNo" type="text" maxlength="10" id="ContentPlaceHolder1_TxtNomineePanNo" class="form-control" />
         </div>
         </div>
         <div class="form-group row">
         <label for="drpNomineeKycType" class="col-sm-4 control-label">Nominee KYC Type</label>
         <div class="col-sm-8">
         <select name="nomineeKycType" id="nomineeKycType" class="form-control" style="width: 100%;">
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
         <div class="col-md-12">
         <div class="box box-info">
         <div class="box-header with-border">
         <h3 class="box-title">Fees/Setting Details </h3>
         </div>
         <div class="form-horizontal">
         <div class="box-body">
         <div class="col-md-6">
         <div class="form-group row">
         <label for="txtMemberJoiningFess" class="col-sm-4 control-label">Member Fees (if any) <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <input name="memberJoiningFess" type="text" value="0" id="ContentPlaceHolder1_txtMemberJoiningFess" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" />
         <span id="ContentPlaceHolder1_RequiredFieldValidator6" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Member Fees (if any)</span>
         </div>
         </div>
         <div class="form-group row">
         <label for="txtShareAllotmentFrom" class="col-sm-4 control-label">Share Alloted From <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <select name="shareAllotedfrm" id="shareAllotedfrm" class="form-control select2" style="width: 100%;">
         </select>
         <span id="ContentPlaceHolder1_RequiredFieldValidator13" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Alloted From</span>
         </div>
         </div>
         <div class="form-group row">
         <label for="txtNoOfShared" class="col-sm-4 control-label">No. of Share <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <input name="noOfShared" type="text" value="1" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtNoOfShared\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;return isNumberOnlyKey(this, event);" id="ContentPlaceHolder1_txtNoOfShared" class="form-control" />
         <span id="ContentPlaceHolder1_RequiredFieldValidator10" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter No of Share</span>
         </div>
         </div>
         <div class="form-group row">
         <label class="col-sm-4 control-label">Share Amount <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <input name="enterShareAmount" type="text" value="10" readonly="readonly" id="ContentPlaceHolder1_txtEnterShareAmount" class="form-control" />
         <span id="ContentPlaceHolder1_RequiredFieldValidator14" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Share Amount</span>
         </div>
         </div>
         <div class="form-group row">
         <label for="drpPaymentBy" class="col-sm-4 control-label">Payment By <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <select name="paymode" id="paymode" class="form-control" style="width: 100%;">
         </select>
         </div>
         </div>
         <div class="form-group row">
         <label class="col-sm-4 control-label">Remarks</label>
         <div class="col-sm-8">
         <textarea name="remarks" rows="2" cols="20" id="ContentPlaceHolder1_txtRemarks" class="form-control" Placeholder="Enter Remarks if any">
         </textarea>
         </div>
         </div>
         </div>
         <div class="col-md-6">
         <div class="form-group row">
         <label class="col-sm-4 control-label">Member Status <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <label class="switch">
         <input id="ContentPlaceHolder1_chkisactive" type="checkbox" name="memberStatusIsActive" checked="checked" />
         <span class="slider round"></span>
         </label>
         </div>
         </div>
         <div class="form-group row">
         <label class="col-sm-4 control-label">Mobile Banking <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <label class="switch">
         <input id="ContentPlaceHolder1_chkmobile" type="checkbox" name="chkmobile" />
         <span class="slider round"></span>
         </label>
         </div>
         </div>
         <div class="form-group row">
         <label class="col-sm-4 control-label">Net Banking <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <label class="switch">
         <input id="ContentPlaceHolder1_chknetBanking" type="checkbox" name="chknetBanking" />
         <span class="slider round"></span>
         </label>
         </div>
         </div>
         <div class="form-group row">
         <label class="col-sm-4 control-label">SMS Send <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <label class="switch">
         <input id="ContentPlaceHolder1_chkisSms" type="checkbox" name="chkisSms" checked="checked" />
         <span class="slider round"></span>
         </label>
         </div>
         </div>
         <div class="form-group row">
         <label class="col-sm-4 control-label">Is Minor <strong style="color: Red">*</strong></label>
         <div class="col-sm-8">
         <label class="switch">
         <input id="ContentPlaceHolder1_chkMinor" type="checkbox" name="chkMinor" />
         <span class="slider round"></span>
         </label>
         </div>
         </div>
         </div>
         </div>
         <div class="box-footer">
         <div class="row col-md-12">
         <input type="submit" name="ctl00$ContentPlaceHolder1$btnPrint" value="Print" id="ContentPlaceHolder1_btnPrint" class="btn btn-info pull-right margin-r-5" />
         <input type="submit" name="ctl00$ContentPlaceHolder1$btnSave" value="Save" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnSave&quot;, &quot;&quot;, true, &quot;A&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolder1_btnSave" class="btn btn-success pull-right margin-r-5" />
         </div>
         </div>
         </form>
         </div>
         </div>
         </div>
         </div>
      </section>
   </div>
   <!-- /.content-wrapper -->
   <jsp:include page="../footer.jsp" />