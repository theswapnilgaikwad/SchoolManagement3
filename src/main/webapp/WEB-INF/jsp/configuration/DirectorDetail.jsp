<jsp:include page="../header.jsp" />
<body  onload="getAllDirectorMaster();setBranchInSelectOption()" class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
   <form method="post" action="saveDirectorMaster" modelAttribute="saveDirectorMaster"  id="form1" name="addDirector"  enctype="multipart/form-data">
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
               <h1 id="ContentPlaceHolder1_IdHeader">Add Director/Promoter</h1>
               <ol class="breadcrumb">
                  <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
                  <li><a href="#">Dashboard</a></li>
                  <li class="active">Director/Promoter</li>
               </ol>
            </section>
            <section class="content">
               <div class="row">
                  <div class="col-md-12">
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Director/Promoter Details</h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-5">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Type <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <select name="type" id="type" class="form-control" style="width: 100%;">
                                       <option selected="selected" value="">--Select--</option>
                                       <option value="Director">Director</option>
                                       <option value="Promoter">Promoter</option>
                                    </select>
                                    <span id="typeMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Branch Name <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <select name="branchName" id="branchName" class="form-control" style="width: 100%;">
                                      <option selected="selected" value="">--Select--</option>
                                    </select>
                                   <span id="branchNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                    
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Full Name <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-3">
                                    <select name="prefix" id="prefix" class="form-control" style="width: 100%;">
                                       <option value="Mr.">Mr.</option>
                                       <option value="Ms.">Ms.</option>
                                       <option value="Mrs.">Mrs.</option>
                                       <option value="Smt.">Smt.</option>
                                       <option value="Md.">Md.</option>
                                    </select>
                                    <span id="prefixMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                    
                                 </div>
                                 <div class="col-sm-5">
                                    <input name="directorName" type="text" id="directorName" class="form-control" Placeholder="Enter Director/Promoter Name" />
                                    <span id="directorNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">DOB</label>
                                 <div class="col-sm-8">
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input name="dateOfBirth" type="text" value="01/08/2022" id="dateOfBirth" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                        <span id="dateOfBirthMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                    
                                    </div>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">DIN/Promoter No</label>
                                 <div class="col-sm-8">
                                    <input name="dinNoPromoterNo" type="text" id="dinNoPromoterNo" class="form-control" Placeholder="Enter DIN No/Promoter No" onkeypress="return isNumberOnlyKey(this, event);" />
                                    <span id="dinNoPromoterNoMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                 
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtAppointmentDate" class="col-sm-4 control-label">Appointment Date <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <div class="input-group date">
                                       <div class="input-group-addon">
                                          <i class="fa fa-calendar"></i>
                                       </div>
                                       <input name="appointmentDate" type="text" value="01/08/2022" id="appointmentDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                       <span id="appointmentDateMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;"></span>
                                    
                                    </div>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Relative Name</label>
                                 <div class="col-sm-8">
                                    <input name="relativeName" type="text" id="relativeName" class="form-control" Placeholder="Enter Relative Name" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Relative Relation</label>
                                 <div class="col-sm-8">
                                    <select name="relativeRelation" id="relativeRelation" class="form-control" style="width: 100%;">
                                       <option value="--Select--">--Select--</option>
                                       <option value="Father">Father</option>
                                       <option value="Mother">Mother</option>
                                       <option value="Son">Son</option>
                                       <option value="Daughter">Daughter</option>
                                       <option value="Spouse(Husband/Wife)">Spouse(Husband/Wife)</option>
                                       <option value="Husband">Husband</option>
                                       <option value="Wife">Wife</option>
                                       <option value="Brother">Brother</option>
                                       <option value="Sister">Sister</option>
                                       <option value="Daughter in Law">Daughter in Law</option>
                                       <option value="Brother in Law">Brother in Law</option>
                                       <option value="Grand Daughter">Grand Daughter</option>
                                       <option value="Grand Son">Grand Son</option>
                                       <option value="Other">Other</option>
                                    </select>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label  class="col-sm-4 control-label">Address</label>
                                 <div class="col-sm-8">
                                    <textarea name="address" rows="2" cols="20" id="address" class="form-control" Placeholder="Enter Addess">
                                    </textarea>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">District</label>
                                 <div class="col-sm-8">
                                    <input name="district" type="text" id="district" class="form-control" Placeholder="Enter District" />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-5">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">State</label>
                                 <div class="col-sm-8">
                                    <select name="state" id="state" class="form-control select2" style="width: 100%;">
                                       <option selected="selected" value="--Select--">--Select--</option>
                                       <option value="ANDRA PRADESH">ANDRA PRADESH</option>
                                       <option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
                                       <option value="ASSAM">ASSAM</option>
                                       <option value="BIHAR">BIHAR</option>
                                       <option value="CHHATTISGARH">CHHATTISGARH</option>
                                       <option value="DELHI">DELHI</option>
                                       <option value="GUJARAT">GUJARAT</option>
                                       <option value="HARYANA">HARYANA</option>
                                       <option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
                                       <option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
                                       <option value="JHARKHAND">JHARKHAND</option>
                                       <option value="KARNATAKA">KARNATAKA</option>
                                       <option value="KERALA">KERALA</option>
                                       <option value="MADYA PRADESH">MADYA PRADESH</option>
                                       <option value="MAHARASHTRA">MAHARASHTRA</option>
                                       <option value="MANIPUR">MANIPUR</option>
                                       <option value="MEGHALAYA">MEGHALAYA</option>
                                       <option value="MIZORAM">MIZORAM</option>
                                       <option value="NAGALAND">NAGALAND</option>
                                       <option value="ODISSA">ODISSA</option>
                                       <option value="PUNJAB">PUNJAB</option>
                                       <option value="RAJASTHAN">RAJASTHAN</option>
                                       <option value="SIKKIM">SIKKIM</option>
                                       <option value="TAMIL NADU">TAMIL NADU</option>
                                       <option value="TRIPURA">TRIPURA</option>
                                       <option value="UTTAR PRADESH">UTTAR PRADESH</option>
                                       <option value="UTTARAKHAND">UTTARAKHAND</option>
                                       <option value="WEST BENGAL">WEST BENGAL</option>
                                    </select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator11" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select State</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtPin" class="col-sm-4 control-label">Pin Code</label>
                                 <div class="col-sm-8">
                                    <input name="pin" type="text" maxlength="7" id="pin" class="form-control" Placeholder="Enter Pin" onkeypress="return isNumberOnlyKey(this, event);" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Aadhar No.</label>
                                 <div class="col-sm-8">
                                    <input name="aadharno" type="text" maxlength="12" id="aadharno" class="form-control" Placeholder="Enter Aadhar No." />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Pan No.</label>
                                 <div class="col-sm-8">
                                    <input name="panNo" type="text" maxlength="10" id="panNo" class="form-control" Placeholder="Enter Pan" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtMobileNo" class="col-sm-4 control-label">Mobile No. <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="mobileNo" type="text" maxlength="10" id="mobileNo" class="form-control" Placeholder="Enter Mobile No." autocomplete="off" onkeypress="return isNumberOnlyKey(this, event);" />
                                    <span id="mobileNoMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Mobile No.</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtEmailId" class="col-sm-4 control-label">Email ID</label>
                                 <div class="col-sm-8">
                                    <input name="emailId" type="text" id="emailId" class="form-control" Placeholder="Enter Email ID" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtShareNominalValue" class="col-sm-4 control-label">Face Value</label>
                                 <div class="col-sm-8">
                                    <input name="shareNominalValue" type="text" value="10" readonly="readonly" id="shareNominalValue" class="form-control" />
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtShareAmount" class="col-sm-4 control-label">Share Amount <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="shareAmount" type="text" id="shareAmount" class="form-control" Placeholder="Enter Share Amount" />
                                    <span id="shareAmountMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Share Amount</span>
                                 </div>
                              </div>
                              <div class="form-group row">
                                 <label for="txtTotalShareValue" class="col-sm-4 control-label">No. Of Share</label>
                                 <div class="col-sm-8">
                                    <input name="noOfShare" type="text" readonly="readonly" id="noOfShare" class="form-control" Placeholder="No. Of Share" />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-2">
                              <div class="row">
                                 <div class="col-sm-12">
                                    <img id="ContentPlaceHolder1_ImageApplicant" src="#" style="height:110px;width:110px;" />
                                    <input type="file" disabled name="ctl00$ContentPlaceHolder1$filephoto" id="ContentPlaceHolder1_filephoto" />
                                 </div>
                              </div>
                              <div class="row margin">
                                 <div class="col-sm-12">
                                    <img id="ContentPlaceHolder1_ImageSignature" src="#" style="height:70px;width:115px;" />
                                    <input type="file" disabled name="ctl00$ContentPlaceHolder1$filesignature" id="ContentPlaceHolder1_filesignature" />
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
                           <h3 class="box-title">Payment Details </h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-6">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Payment By</label>
                                 <div class="col-sm-8">
                                    <select name="paymode"  id="paymode" class="form-control" style="width: 100%;">
                                       <option selected="selected" value="Cash">Cash</option>
                                       <option value="Cheque">Cheque</option>
                                       <option value="Online">Online</option>
                                       <option value="NEFT">NEFT</option>
                                    </select>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-6">
                           </div>
                        </div>
                        <div class="box-footer">
                           <div class="row col-md-12">
                              <button type="button" name="save" value="Save"  id="save" 
                              onclick="validateAddDirector()"
                              class="btn btn-success pull-right margin-r-5">Save</button>
                           </div>
                        </div>
                     </div>
                     <div class="box box-success" style="box-shadow:none;overflow:auto !important;">
                        <div class="box-body">
                           <div class="clearfix margin-bottom-10"></div>
                           <div>
                              <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" border="1" 
                              id="" style="width:100%;border-collapse:collapse;">
                                 <caption>
                                    Director/Promoter Data List
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">Type</th>
                                    <th scope="col">Director ID</th>
                                    <th scope="col">Full Name</th>
                                    <th scope="col">DIN No.</th>
                                    <th scope="col">AppDate</th>
                                    <th scope="col">Share Amount</th>
                                    <th scope="col">No. Of Share</th>
                                    <th scope="col">DNO From</th>
                                    <th scope="col">DNO To</th>
                                    <th scope="col">Member Code</th>
                                    <th scope="col">Payment By</th>
                                 </tr>
                                
                              </table>
                               <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" border="1" 
                              id="ContentPlaceHolder1_gdvData_Director" style="width:100%;border-collapse:collapse;">
                                 <caption>
                                    Director/Promoter Data List
                                 </caption>
                                 
                                
                              </table>
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
            <span id="lblCompanyName1">EQFI NIDHI LIMITED</span></a>.</strong> All rights
            reserved.
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
      <script type="text/javascript">
         //<![CDATA[
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator11"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"));
         //]]>
      </script>
      <script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
         ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_ddlType";
         ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Select Type";
         ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "--Select--";
         var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
         ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtDirectorName";
         ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Full Name";
         ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator11 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator11"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator11");
         ContentPlaceHolder1_RequiredFieldValidator11.controltovalidate = "ContentPlaceHolder1_ddlState";
         ContentPlaceHolder1_RequiredFieldValidator11.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator11.errormessage = "Select State";
         ContentPlaceHolder1_RequiredFieldValidator11.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator11.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator11.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator11.initialvalue = "--Select--";
         var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
         ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtMobileNo";
         ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter Mobile No.";
         ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
         var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
         ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtShareAmount";
         ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
         ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Share Amount";
         ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
         ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
         ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
         //]]>
      </script>
      <script type="text/javascript">
         //<![CDATA[
         
         var Page_ValidationActive = false;
         if (typeof(ValidatorOnLoad) == "function") {
             ValidatorOnLoad();
         }
         
         function ValidatorOnSubmit() {
             if (Page_ValidationActive) {
                 return ValidatorCommonOnSubmit();
             }
             else {
                 return true;
             }
         }
                 
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator11'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
         }
         
         document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
         }
         //]]>
      </script>
   </form>
</body>
</html>