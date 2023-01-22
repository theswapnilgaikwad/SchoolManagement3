<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="post" action="accountLegMaster" id="form1"name="myForm" modelAttribute="saveGroupMasterApplication">
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
        <h1 id="ContentPlaceHolder1_IdHeader">Ledger Master</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Ledger Master</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-5">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Add Ledger Master </h3>
                    </div>
                    <div class="form-horizontal">
                        <div class="box-body">
                            <div class="col-md-12">
                             
                                <div class="form-group row">
                                    <label for="txtLedgerName" class="col-sm-4 control-label">Ledger Name <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <input name="ledgerName" type="text" id="ledgerName" class="form-control" />
                                        <span id="ledgerNameMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Ledger Name</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ddlLegers" class="col-sm-4 control-label">Select Group <strong style="color: Red">*</strong></label>
                                     <div class="col-sm-8">
                                        <select name="group"  id="group" class="form-control" style="width: 100%;">
	<option selected="selected" value="509">Bank A/C </option>
	<option value="566">Capital</option>
	<option value="507">Cash In Hand</option>
	<option value="501">Current Assets</option>
	<option value="502">Current Liabilities</option>
	<option value="505">Direct Expense</option>
	<option value="503">Direct Income</option>
	<option value="506">Indirect Expense</option>
	<option value="504">Indirect Income</option>

</select>
                                     
                                    </div>
                                   
                                   
                                </div>
                                <div class="form-group row">
                                  
                                    <div class="col-sm-8">
                                        
                                        
                                         
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <div class="row col-md-12">
                                <button type="button" name="ctl00$ContentPlaceHolder1$btnClear" value="Clear" id="ContentPlaceHolder1_btnClear" 
                                class="btn btn-info pull-right margin-r-5" >Clear</button>
                                <button type="button" name="ctl00$ContentPlaceHolder1$btnSave" value="Save" 
                                id="ContentPlaceHolder1_btnSave" onclick="validateAccountLegMaster" class="btn btn-success pull-right margin-r-5">Save</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="box box-success">
                    <div class="form-horizontal">
                        <div class="box-body">
                            <div id="ContentPlaceHolder1_pnllist" style="height:400px;overflow-y:scroll;">
	
                            <div>
		<table cellspacing="0" rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" id="ContentPlaceHolder1_gvLedgers" style="width:100%;border-collapse:collapse;">
			<caption>
				Ledger List
			</caption><tr style="color:White;background-color:#008385;">
				<th scope="col">Ledger Name</th><th scope="col">Group Name</th><th scope="col">View</th>
			</tr><tr>
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_0" style="color:Red;">Official Exp</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_0" style="color:Green;">Indirect Expense</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl02$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_0" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr style="color:#000333;background-color:#F3ACAF;">
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_1" style="color:Red;">Petty Cash</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_1" style="color:Green;">Cash In Hand</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl03$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_1" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr>
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_2" style="color:Red;">Furniture & Fixture</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_2" style="color:Green;">Current Assets</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl04$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_2" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr style="color:#000333;background-color:#F3ACAF;">
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_3" style="color:Red;">Bank Charge </span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_3" style="color:Green;">Indirect Expense</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl05$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_3" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr>
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_4" style="color:Red;">Employee Salary</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_4" style="color:Green;">Direct Expense</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl06$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_4" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr style="color:#000333;background-color:#F3ACAF;">
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_5" style="color:Red;">Office Rent</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_5" style="color:Green;">Indirect Expense</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl07$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_5" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr>
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_6" style="color:Red;">Electric Bill</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_6" style="color:Green;">Bank A/C </span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl08$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_6" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr style="color:#000333;background-color:#F3ACAF;">
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_7" style="color:Red;">Incentive</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_7" style="color:Green;">Direct Expense</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl09$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_7" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr>
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_8" style="color:Red;">Electric Bill</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_8" style="color:Green;">Indirect Expense</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl10$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_8" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr style="color:#000333;background-color:#F3ACAF;">
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_9" style="color:Red;">Deposit self</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_9" style="color:Green;">Bank A/C </span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl11$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_9" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr>
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_10" style="color:Red;">Pass book Reisssue charge</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_10" style="color:Green;">Indirect Income</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl12$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_10" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr style="color:#000333;background-color:#F3ACAF;">
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_11" style="color:Red;">Revenu </span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_11" style="color:Green;">Cash In Hand</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl13$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_11" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr>
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_12" style="color:Red;">Revenu </span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_12" style="color:Green;">Indirect Income</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl14$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_12" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr><tr style="color:#000333;background-color:#F3ACAF;">
				<td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblGName_13" style="color:Red;">Maturity Paid</span>
                                    </td><td>
                                        <span id="ContentPlaceHolder1_gvLedgers_lblUNAME_13" style="color:Green;">Current Liabilities</span>
                                    </td><td align="center" style="width:50px;">
                                        <input type="image" name="ctl00$ContentPlaceHolder1$gvLedgers$ctl15$imgBtnSelect" id="ContentPlaceHolder1_gvLedgers_imgBtnSelect_13" src="dist/img/view-icon.png" />                                                                                                            
                                                                      
                                    </td>
			</tr>
		</table>
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
                    <span id="lblCompanyName1">EQFI NIDHI LIMITED</span></a>.</strong> All rights reserved.
 
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredtxtLedgerName"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredtxtLedgerName = document.all ? document.all["ContentPlaceHolder1_RequiredtxtLedgerName"] : document.getElementById("ContentPlaceHolder1_RequiredtxtLedgerName");
ContentPlaceHolder1_RequiredtxtLedgerName.controltovalidate = "ContentPlaceHolder1_txtLedgerName";
ContentPlaceHolder1_RequiredtxtLedgerName.focusOnError = "t";
ContentPlaceHolder1_RequiredtxtLedgerName.errormessage = "Enter Ledger Name";
ContentPlaceHolder1_RequiredtxtLedgerName.display = "Dynamic";
ContentPlaceHolder1_RequiredtxtLedgerName.validationGroup = "A";
ContentPlaceHolder1_RequiredtxtLedgerName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredtxtLedgerName.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredtxtLedgerName').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredtxtLedgerName'));
}
//]]>
</script>
</form>
</body>

</html>
