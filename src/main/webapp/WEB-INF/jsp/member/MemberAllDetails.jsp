<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
   style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
   cz-shortcut-listen="true">
   <form method="post"
      action=""
      id="form1">
      <script type="text/javascript">
         //<![CDATA[       
         function callback(ids){
          	var input = {
                      "id": ids
              }
          	$.ajax({
                  type:"post",
                  contentType: "application/json",
                  data: JSON.stringify(input),
                  url: 'getMember',
                  asynch: false,
                  success: function(data) {
                  	var x = Number(data.id)
                  	document.getElementById("id").value = x;
                      document.getElementById("memberName").value = data.memberName;
                      document.getElementById("registrationDate").value = data.registrationDate;
                      document.getElementById("relativeName").value = data.relativeName;
                      document.getElementById("dob").value = data.dob;
                      document.getElementById("address").value = data.address;
                      document.getElementById("pinCode").value = data.pinCode;   
                      document.getElementById("nomineeName").value = data.nomineeName;
                      document.getElementById("emailid").value = data.emailid;
                      document.getElementById("dob").value = data.dob;
                      document.getElementById("age").value = data.age;
                      document.getElementById("bankCode").value = data.branchName;
                      document.getElementById("gender").value = data.gender;
                  } ,
          	    error: function(){
          	    	alert("Device control failed");
          	    }
              });
         }
         
         document.getElementById("btnView").onclick = function(){
        	  this.disabled = true
        	}
         //]]>
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
            Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', ['tctl00$ContentPlaceHolder1$UpdatePanel3','ContentPlaceHolder1_UpdatePanel3','tctl00$ContentPlaceHolder1$gdvData$ctl02$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_0','tctl00$ContentPlaceHolder1$gdvData$ctl03$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_1','tctl00$ContentPlaceHolder1$gdvData$ctl04$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_2','tctl00$ContentPlaceHolder1$gdvData$ctl05$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_3','tctl00$ContentPlaceHolder1$gdvData$ctl06$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_4','tctl00$ContentPlaceHolder1$gdvData$ctl07$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_5','tctl00$ContentPlaceHolder1$gdvData$ctl08$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_6','tctl00$ContentPlaceHolder1$gdvData$ctl09$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_7','tctl00$ContentPlaceHolder1$gdvData$ctl10$UpdatePanel3','ContentPlaceHolder1_gdvData_UpdatePanel3_8'], [], [], 90, 'ctl00');
            //]]>
         </script>
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper" style="min-height: 1105.75px;">
            <section class="content-header">
               <h1 id="ContentPlaceHolder1_IdHeader">Member Summary</h1>
               <ol class="breadcrumb">
                  <li><a href="Home.html"><i class="fa fa-dashboard"></i>
                     Home</a>
                  </li>
                  <li><a href="#">Dashboard</a></li>
                  <li class="active">Summary</li>
               </ol>
            </section>
            <section class="content">
               <div class="row">
                  <div class="col-md-12">
                     <div class="box box-warning">
                        <div class="box-header with-border">
                           <h3 class="box-title">Search Details</h3>
                        </div>
                        <div class="form-horizontal">
                           <div class="box-body">
                              <div class="col-md-6">
                                 <div class="form-group row">
                                    <label class="col-sm-4 control-label">Select by Code<strong
                                       style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       <%List<Member> allMember = (List<Member>)request.getAttribute("allMember"); 
                                          if(allMember!=null && !allMember.isEmpty()){ %>
                                       <select
                                          name="ctl00$ContentPlaceHolder1$ddlSearchMemberCode"
                                          onchange="callback(this.value)"
                                          id="ContentPlaceHolder1_ddlSearchMemberCode"
                                          class="form-control select2" style="width: 100%;">
                                          <option selected="selected" value="">Select
                                             Criteria
                                          </option>
                                          <%for(Member member: allMember){ %>
                                          <option value="<%=member.getId()%>"><%=member.getMemberName() %>
                                             -
                                             <%=member.getBranchName() %>
                                          </option>
                                          <%} 
                                             }%>
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
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Member Details</h3>
                        </div>
                        <div id="ContentPlaceHolder1_pnlCdetails" class="aspNetDisabled">
                           <div class="box-body">
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Member Code :</label> <input name="id" type="text"
                                       value="01/NGP/ 000001" disabled="disabled" id="id"
                                       class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Member Name :</label> <input name="memberName"
                                       type="text" value="ANKUSH GAJANANRAO BHELKAR" maxlength="4"
                                       disabled="disabled" id="memberName" class="form-control"
                                       autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Registration Date :</label>
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input name="registrationDate" type="text"
                                          value="27/06/2022" disabled="disabled"
                                          id="registrationDate" class="form-control"
                                          data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
                                          data-mask="" />
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Relative Name :</label> <input name="relativeName"
                                       type="text" value="REKHA GAJANAN BHELKAR"
                                       disabled="disabled" id="relativeName" class="form-control"
                                       autocomplete="off" />
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Address :</label> <input name="address" type="text"
                                       value="PLOT NO. 2 JAITALA ROAD NEAR DATE LAY OUT PULIYA  WADASKAR LAY OUT "
                                       disabled="disabled" id="address" class="form-control"
                                       autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Pincode :</label> <input name="pinCode" type="text"
                                       value="440036" disabled="disabled" id="pinCode"
                                       class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>State :</label> <input name="state" type="text"
                                       value="MAHARASHTRA" disabled="disabled" id="state"
                                       class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Mobile :</label> <input name="phoneno" type="text"
                                       value="7498850190" disabled="disabled" id="phoneno"
                                       class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Aadhar No. :</label> <input name="aadharNo"
                                       type="text" value="226175533958" disabled="disabled"
                                       id="aadharNo" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>PAN :</label> <input name="pan" type="text"
                                       value="BAHPB1218B" disabled="disabled" id="pan"
                                       class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Nominee Name :</label> <input name="nomineeName"
                                       type="text" disabled="disabled" id="nomineeName"
                                       class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Email ID :</label> <input name="emailid" type="text"
                                       value="FGFCANKUSHBHELKAR@GMAIL.COM" disabled="disabled"
                                       id="emailid" class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>DOB :</label> <input name="dob" type="text"
                                       value="08/09/1988" disabled="disabled" id="dob"
                                       class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Age :</label> <input name="age" type="text" value="0"
                                       disabled="disabled" id="age" class="form-control"
                                       autocomplete="off"
                                       onkeypress="return isNumberKey(this, event);" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Branch Code :</label> <input name="bankCode"
                                       type="text" value="001" disabled="disabled" id="bankCode"
                                       class="form-control" autocomplete="off" />
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Gender :</label> <input name="gender" type="text"
                                       disabled="disabled" id="gender" class="form-control"
                                       autocomplete="off" />
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
                                    <img id="ContentPlaceHolder1_imglogo"
                                       class="profile-user-img" src="dist/img/User.png"
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
                                    <img id="ContentPlaceHolder1_imgSignature"
                                       class="profile-user-img" src="dist/img/Signature.png"
                                       style="height: 70px; width: 115px;" />
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <div class="box box-success"
                        style="box-shadow: none; overflow: auto !important;">
                        <div class="box-body">
                           <div class="clearfix margin-bottom-10"></div>
                           <div>
                              <table cellspacing="0" cellpadding="3" rules="all"
                                 class="display nowrap table table-hover table-striped table-bordered"
                                 border="1" id="ContentPlaceHolder1_gdvData"
                                 style="width: 100%; border-collapse: collapse;">
                                 <caption>Account/Investment Details</caption>
                                 <tr style="color: White; background-color: #008385;">
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">&nbsp;</th>
                                 </tr>
                                 <tr>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_0"
                                       style="font-weight: bold;">Member Share</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_0">Total
                                       Share : 107100</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_0">Share
                                       Amount : 1.071e+006</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_0"></span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_0"></span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_0">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl02$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_0"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" /> 
                                       </div>
                                    </td>
                                 </tr>
                                 <tr style="color: #000333; background-color: #F3ACAF;">
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_1"
                                       style="font-weight: bold;">RD Policy</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_1">Policy
                                       No : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_1">Policy
                                       Amount : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_1">Total
                                       Deposit : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_1">Next
                                       Renewal On : --/--/----</span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_1">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl03$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_1"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" />
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_2"
                                       style="font-weight: bold;">Daily Policy</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_2">Policy
                                       No : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_2">Policy
                                       Amount : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_2">Total
                                       Deposit : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_2">Next
                                       Renewal On : --/--/----</span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_2">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl04$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_2"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" />
                                       </div>
                                    </td>
                                 </tr>
                                 <tr style="color: #000333; background-color: #F3ACAF;">
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_3"
                                       style="font-weight: bold;">FD Policy</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_3">Policy
                                       No : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_3">Policy
                                       Amount : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_3">Estimeted
                                       Return : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_3">Maturity
                                       On : --/--/----</span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_3">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl05$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_3"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" />
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_4"
                                       style="font-weight: bold;">MIS Policy</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_4">Policy
                                       No : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_4">Policy
                                       Amount : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_4">MIS
                                       Interest Return : 0 </span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_4">Maturity
                                       On : --/--/----</span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_4">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl06$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_4"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" />
                                       </div>
                                    </td>
                                 </tr>
                                 <tr style="color: #000333; background-color: #F3ACAF;">
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_5"
                                       style="font-weight: bold;">Savings A/C</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_5">Account
                                       No : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_5">Total
                                       Deposit : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_5">Total
                                       Withdrawal : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_5">Available
                                       Balance : 0</span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_5">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl07$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_5"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" />
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_6"
                                       style="font-weight: bold;">Loan</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_6">Loan
                                       ID : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_6">Loan
                                       Amount : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_6">Due
                                       Principal : 0 </span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_6">Due
                                       Interest : 0 </span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_6">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl08$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_6"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" />
                                       </div>
                                    </td>
                                 </tr>
                                 <tr style="color: #000333; background-color: #F3ACAF;">
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_7"
                                       style="font-weight: bold;">Gold Loan</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_7">Loan
                                       ID : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_7">Loan
                                       Amount : 0</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_7">Due
                                       Principal : 0 </span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_7">Due
                                       Interest : 0 </span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_7">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl09$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_7"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" />
                                       </div>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblRHead_8"
                                       style="font-weight: bold;">Maturity Requisition</span></td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblCode_8">Policy
                                       No : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblName_8">Status
                                       : NA</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTAmount_8">Maturity
                                       date : --/--/----</span>
                                    </td>
                                    <td><span id="ContentPlaceHolder1_gdvData_lblTBV_8">Calculated
                                       Maturity : 0 </span>
                                    </td>
                                    <td align="center" style="width: 50px;">
                                       <div id="ContentPlaceHolder1_gdvData_UpdatePanel3_8">
                                          <input type="image"
                                             name="ctl00$ContentPlaceHolder1$gdvData$ctl10$ImgView"
                                             id="ContentPlaceHolder1_gdvData_ImgView_8"
                                             onclick="this.disabled = true"
                                             data-target="#modal-success" data-toggle="modal"
                                             src="dist/img/view-icon.png" />
                                       </div>
                                    </td>
                                 </tr>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="modal modal-success fade" id="modal-success">
                  <div class="modal-dialog">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                           <h4 class="modal-title">Details View</h4>
                        </div>
                        <div class="modal-body">
                           <div id="ContentPlaceHolder1_UpdatePanel3">
                              <div style="box-shadow: none; overflow: auto;">
                                 <div></div>
                              </div>
                           </div>
                        </div>
                        <div class="modal-footer">
                           <button type="button" class="btn btn-outline pull-left"
                              data-dismiss="modal">Close</button>
                        </div>
                     </div>
                     <!-- /.modal-content -->
                  </div>
                  <!-- /.modal-dialog -->
               </div>
               <!-- /.modal -->
            </section>
         </div>
         <!-- /.content-wrapper -->
         <footer class="main-footer">
            <div class="pull-right hidden-xs">
               <b>Version</b> 1.0.1
            </div>
            <strong>Copyright © 2020-2021 <a> <span
               id="lblCompanyName1">EQFI NIDHI LIMITED</span></a>.
            </strong> All rights reserved.
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
      <script
         src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
      <!-- bootstrap datepicker -->
      <script
         src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
      <!-- bootstrap color picker -->
      <script
         src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
      <!-- bootstrap time picker -->
      <script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
      <!-- SlimScroll -->
      <script
         src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
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
      <script>
         $(function () {
             //Initialize Select2 Elements
             $('.select2').select2();
             //Datemask dd/mm/yyyy
             $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
             //Datemask2 mm/dd/yyyy
             $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
             //Date range picker
             $('#reservation').daterangepicker()
             //Date range picker with time picker
             $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
             $('#daterange-btn').daterangepicker(
              {
                  ranges: {
                      'Today': [moment(), moment()],
                      'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                      'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                      'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                      'This Month': [moment().startOf('month'), moment().endOf('month')],
                      'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                  },
                  startDate: moment().subtract(29, 'days'),
                  endDate: moment()
              },
              function (start, end) {
                  $('#daterange-btn span').html(start.format('DD/MM/YYYY') + ' - ' + end.format('DD/MM/YYYY'))
              }
            )
             //Date picker
             $('#datepicker').datepicker({
                 autoclose: true
             })
             //Money Euro
             $('[data-mask]').inputmask()
         
             //iCheck for checkbox and radio inputs
             $('span[type="checkbox"].minimal').iCheck({
                 checkboxClass: 'icheckbox_minimal-blue',
                 radioClass: 'iradio_minimal-blue'
             })
         
         
         
         
         
         })
      </script>
   </form>
</body>
<!-- Dk/Admin/MemberAllDetails.aspx EDB D 09:26:56 GMT -->
</html>