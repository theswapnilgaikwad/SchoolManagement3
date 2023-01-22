<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="post" action="#" onsubmit="javascript:return WebForm_OnSubmit();" id="form1">

        <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">

        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                

                 

    <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Contra Voucher</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Contra Voucher</li>
        </ol>
    </section>
    <section class="content">
         <div class="row">
            <div class="col-md-12">
                  <div class="box box-success">
                      <div class="box-header with-border">
                        <h3 class="box-title">Search Box </h3>
                    </div>
                      <div class="box-body">




                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Select Branch</label>
                                <select name="ctl00$ContentPlaceHolder1$ddlBranchName" id="ContentPlaceHolder1_ddlBranchName" class="form-control" style="width: 100%;">
	<option selected="selected" value="All">All Branch</option>
	<option value="001">Main Office - 001</option>

</select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>From Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="ctl00$ContentPlaceHolder1$txtFDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtFDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>To Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="ctl00$ContentPlaceHolder1$txtTDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtTDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                           <div class="col-md-3">
                                 <div class="form-group">
                                      <label></label>
                                     <input type="submit" name="ctl00$ContentPlaceHolder1$btnSearch" value="Search" id="ContentPlaceHolder1_btnSearch" class="btn btn-success pull-right margin-20" />
                                </div>
                            </div>


                    </div>

                  
                </div>

                   </div>  
                </div>
             
        
        <div class="row">
            <div class="col-md-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Entry Details </h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label for="ddlPvBranch" class="col-sm-4 control-label">Select Branch<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="ctl00$ContentPlaceHolder1$ddlBranch" id="ContentPlaceHolder1_ddlBranch" class="form-control" style="width: 100%;">
	<option value="001">Main Office - 001</option>

</select>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherNo" class="col-sm-4 control-label">Receipt No.(Auto)<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtVoucherNo" type="text" readonly="readonly" id="ContentPlaceHolder1_txtVoucherNo" class="form-control" />

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherDate" class="col-sm-4 control-label">Txn Date<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="ctl00$ContentPlaceHolder1$txtVoucherDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtVoucherDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ddlLedger" class="col-sm-4 control-label">Select Cr. Ledger<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="ctl00$ContentPlaceHolder1$ddlCLedger" id="ContentPlaceHolder1_ddlCLedger" class="form-control" style="width: 100%;">
	<option selected="selected" value=""></option>
	<option value="1001">Cash A/C</option>
	<option value="2091">107363400000533</option>

</select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorddlLedger" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Cr. Ledger</span>
                                </div>
                            </div>
                          
                        </div>
                        <div class="col-md-6">

                              <div class="form-group row">
                                <label for="ddlDebitFrom" class="col-sm-4 control-label">select Dr. Ledger<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="ctl00$ContentPlaceHolder1$ddlDebitFrom" id="ContentPlaceHolder1_ddlDebitFrom" class="form-control" style="width: 100%;">
	<option selected="selected" value=""></option>
	<option value="1001">Cash A/C</option>
	<option value="2091">107363400000533</option>

</select>
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorDebitFrom" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Dr. Ledger</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtAmount" class="col-sm-4 control-label">Amount<strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="ctl00$ContentPlaceHolder1$txtAmount" type="text" id="ContentPlaceHolder1_txtAmount" class="form-control" PlaceHolder="Enter Amount" onpaste="return false" onkeypress="return isNumberKey(this, event);" autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidatorAmount" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Amount</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtVoucherNo" class="col-sm-4 control-label">Remaks (if any)</label>
                                <div class="col-sm-8">
                                    <textarea name="ctl00$ContentPlaceHolder1$txtRemarks" rows="2" cols="20" id="ContentPlaceHolder1_txtRemarks" class="form-control">
</textarea>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="row col-md-12">
                            
                            
                            <input type="submit" name="ctl00$ContentPlaceHolder1$btnSave" value="Save" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnSave&quot;, &quot;&quot;, true, &quot;B&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolder1_btnSave" class="btn btn-success pull-right margin-r-5" />
                        </div>
                    </div>

                </div>
            </div>

            
        </div>


        
        <div class="row">
               <div class="col-md-12">
                   <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                          <div class="box-header with-border">
                        <h3 class="box-title">Search Result</h3>
                       
                    </div>
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>

                       
                        <div>
	<table cellspacing="0" rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" id="ContentPlaceHolder1_gdvTransaction" style="width:100%;border-collapse:collapse;">
		<caption>
			Transaction List
		</caption><tr>
			<td>No Receord Found</td>
		</tr>
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
var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlLedger"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitFrom"), document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount"));
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
var ContentPlaceHolder1_RequiredFieldValidatorddlLedger = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlLedger"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlLedger");
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.controltovalidate = "ContentPlaceHolder1_ddlCLedger";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.errormessage = "Select Cr. Ledger";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorddlLedger.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorDebitFrom = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorDebitFrom"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorDebitFrom");
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.controltovalidate = "ContentPlaceHolder1_ddlDebitFrom";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.errormessage = "Select Dr. Ledger";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorDebitFrom.initialvalue = "";
var ContentPlaceHolder1_RequiredFieldValidatorAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorAmount"] : document.getElementById("ContentPlaceHolder1_RequiredFieldValidatorAmount");
ContentPlaceHolder1_RequiredFieldValidatorAmount.controltovalidate = "ContentPlaceHolder1_txtAmount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.focusOnError = "t";
ContentPlaceHolder1_RequiredFieldValidatorAmount.errormessage = "Enter Amount";
ContentPlaceHolder1_RequiredFieldValidatorAmount.display = "Dynamic";
ContentPlaceHolder1_RequiredFieldValidatorAmount.validationGroup = "B";
ContentPlaceHolder1_RequiredFieldValidatorAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
ContentPlaceHolder1_RequiredFieldValidatorAmount.initialvalue = "";
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
        
document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlLedger').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlLedger'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitFrom').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorDebitFrom'));
}

document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount').dispose = function() {
    Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredFieldValidatorAmount'));
}
//]]>
</script>
</form>
</body>
</html>
