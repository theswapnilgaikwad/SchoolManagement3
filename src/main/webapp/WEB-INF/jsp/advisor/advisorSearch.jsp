<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini" onload="callGetAllMasterData()" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <form method="post" action="searchAdvisor" id="form1" modelAttribute="user">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="../WebResourcea077.js?d=aKrB3Wg4ktcAdLzfwHNclnzQJginAX-WDxEXiKln398ZfxSpl5en7e6-r-t6qAS--33aKUyvVcAR5D4ulS_TNNrAx-wX18laGa3-ySpD_j01&amp;t=637290976998988531" type="text/javascript"></script>


<script src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c" type="text/javascript"></script>
<script src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4338DE3C" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="e3dziZyREYYc94Zps+D2mfxidzoFLi7EiReQbU2EJiaDNd7rQnoYDRr5nh13OyUwsKMwYJ1POXMZJRyXkrWchI4H2np7JMcPUsYY4DVgzwxZKA2CmOdj2ZuSN9y6dmBaV3an6OcMCxzAhvJ5C83PH5QbFv3p+yIBhHXriXWclKaPmLEUf1Sd3bLYO/jArHhrFMJyo+Yo4cSruo8Z+ZDe7LxNVMx7+1eLjpUgyLvpDbgEcP0FjMfU5ntQsXz8H6UEHlfMbCKnkSTE06RnNeR5s9r1wu+yOkIwaBOuFhusvniwuzv8GCUzYDWzUyLodABbxOoskxTGOlFKWRgAL7k0wYT5YEIZ1tynF5K+O8KGUerVgCLclNPAUS0gz1gcbf6V0VSikQ0eypzfsM2/r21FXVKT3r+2jCThaxDRP5kMB2fmIGNWu3IdKSl8djDW/AqpSbS323TMxirtpYhCtCtJHyqYgjN1V0M0b5sREdi/uZi6sm7jgu0m3HhpEw1/x2QpcvLfWKrxJNQ3rfhVT9Bj2o8SZk5C6RF69KCXX28ffaLz1WnPb3Am9t7x+x7/L9sMlvDUnVZx3hBbXcaQfl+KrFJOQMC8oOJ8bW+K81BPNZU=" />
</div>

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
        <h1 id="ContentPlaceHolder1_IdHeader">Search Advisor</h1>
         <ol class="breadcrumb">
        <li><a href="Home.html"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Dashboard</a></li>
        <li class="active">Search Advisor</li>
      </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Box</h3>
                         
                    </div>
                   
                        <div class="box-body">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Branch :</label>
                                        <select name="branchName" id="branchName" class="form-control select2" style="width: 100%;">
	<option value="All">All Branch</option>

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
                                          <input name="fDate" type="date" value="01/08/2022" id="fDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />                          
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
                                   
                                          <input name="tDate" type="date" value="01/08/2022" id="tDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                          
                          
                                    </div>
                                         
                                   
                                </div>
                            </div>
                             <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Advisor Name :</label>
                                        <input name="memberName" type="text" id="memberName" class="form-control" Placeholder="Enter Advisor Name" autocomplete="off" />
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Advisor Code :</label>
                                        <input name="id" type="text" id=id class="form-control" Placeholder="Enter Advisor Code" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Mobile No. :</label>
                                        <input name="mobileNo" type="text" id="mobileNo" class="form-control" Placeholder="Enter Mobile No." autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Introducer Code :</label>
                                        <input name="introducerCode" type="text" id="introducerCode" class="form-control" Placeholder="Enter Introducer Code" autocomplete="off" />
                                </div>
                            </div>
                             <div class="col-md-3">
                                 <div class="form-group">
                                    <label>Position :</label>
                                        <select name="selectPosition" id="selectPosition" class="form-control" style="width: 100%;">
	<option value=""></option>
	

</select>
                                </div>
                            </div>
                              <div class="clearfix margin-bottom-10"></div>

                            <div class="text-center">
                                <a id="ContentPlaceHolder1_btnSearch" class="btn btn-success" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btnSearch&#39;,&#39;&#39;)"><span class="fa fa-search"></span> SEARCH</a>
                                <a id="ContentPlaceHolder1_btnPrint" class="btn btn-warning" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btnPrint&#39;,&#39;&#39;)"><span class="fa fa-print"></span> PRINT</a>

                                </div>
                        </div>
                    
                </div>

                <div class="box box-success" style="box-shadow:none;overflow:auto !important;">

                       <div class="box-header with-border">
                        <h3 class="box-title">Search Result</h3>
                        <div class="box-tools pull-right">
                            
                        </div>
                    </div>
                        <div class="box-body">
                              <div class="clearfix margin-bottom-10"></div>
                            


                            <div>

<table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered" border="1" id="ContentPlaceHolder1_gdvData" style="width:100%;border-collapse:collapse;">
		<caption>
			Advisor Data List
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
    </form>
</body>
</html>
