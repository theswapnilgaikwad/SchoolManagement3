<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
<!--  <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/InvestmentTotalReport.aspx" id="form1"> -->



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
        <h1 id="ContentPlaceHolder1_IdHeader">Investment Report</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Business Report</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Box</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Branch</label>
                                <select name="branch" id="branch" class="form-control" style="width: 100%;">
									<option>All Branch</option>
									<option value="Main Office-001">Main Office-001</option>
									<option value="Main Office-002">Main Office-002</option>
									<option value="Main Office-003">Main Office-003</option>

</select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Plan Name</label>
                                <select name="planName" id="planName" class="form-control" style="width: 100%;">
									<option>All</option>
									<option value="DRD">DRD</option>
									<option value="FD">FD</option>
									<option value="MIS">MIS</option>
									<option value="RD">RD</option>

</select>
                            </div>
                        </div>
                         <div class="col-md-2">
                            <div class="form-group">
                                <label>Plan Code</label>
                                <select name="planCode" id="planCode" class="form-control" style="width: 100%;">
									<option>All</option>
									<option value="DRD ADVANTAGE">DRD ADVANTAGE</option>
									<option value="GROW">GROW</option>
									<option value="GROW+">GROW+</option>
									<option value="MIS-12">MIS-12</option>
									<option value="ROYAL+">ROYAL+</option>
									<option value="ROYAL FI">ROYAL FI</option>
									<option value="ROYAL FIX">ROYAL FIX</option>
									<option value="WEALTH 1">WEALTH 1</option>
									<option value="WEALTH 3">WEALTH 3</option>
									<option value="WEALTH 5">WEALTH 5</option>

</select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Biz Type</label>
                                <select name="biztype" id="biztype" class="form-control" style="width: 100%;">
									<option>All</option>
									<option value="New">New</option>
									<option value="Renew">Renew</option>

</select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>From Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="fromdate" type="date" id="fromdate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>To Date :</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="todate" type="date" id="todate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                </div>
                            </div>
                        </div>
                        <div class="clearfix margin-bottom-10"></div>
                        <div class="text-center">
                                <!-- <a id="btn-search" class="btn btn-success margin-20" onclick="InvestmentReportAjax1();"><span class="fa fa-search"></span> SEARCH</a> -->
                          		<button type="submit"  onclick="InvestmentReportAjax1();" class="btn btn-success pull-right margin-20" >Search</button>
                          </div>
                        <div class="clearfix margin-bottom-10"></div>
                    </div>
                    
                </div>


                <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Result</h3>
                        <div class="box-tools pull-right"></div>
                        
                        <div>
                        
                        	<h4 style="text-align: center; font-weight: bold;"><b>INVESTMENT REPORT</b></h4>
                        	
                        	<!-- <h3 id="FormDate"></h3>
                        	<h3 id="ToDate"></h3> -->
                        	
                        	<div style="text-align: center; font-weight: bold;">
                        	<p class="inline">(From : </p><p class="inline" id="FormDate"></p>
             				<p class="inline">To. : </p><p class="inline" id="ToDate"></p>
             				<p class="inline">)(Print Date: :- )</p>
                        	</div>
                        	
                        	<hr>
                        	                  		 			
                                   <table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered" 
                              				border="1"  style="width:100%;border-collapse:collapse;">
                                 	<caption>
                                    	
                                 	</caption>
                                 	<tr style="color:White;background-color:#008385;">
                                 	
                                    	<th scope="col">Branch</th>
                		 				<th scope="col">Txn Date</th>
                		 				<th scope="col">Policy No.</th>
                		 				<th scope="col">Applicant Name</th>
                		 				<th scope="col">Member Code</th>
                		 				<th scope="col">INO</th>
                		 				<th scope="col">Advisor Code</th>
                		 				<th scope="col">Biz Amount</th>
                		 				<th scope="col">BIZTYPE</th>
                		 				<th scope="col">Plan Code</th>
                		 				<th scope="col">Plan Name</th> 
                                   
                                 	</tr>
                                  	<tbody id="table">
                                    
      							  	</tbody>
      							  	
                              		</table>
                              		
                       		 </div>
                        
                        
                        
                    </div>
                    <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>

                        


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
                <strong>Copyright � 2020-2021 <a>
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
        <script src="dist/js/InvestmentReport.js"></script>
        <!-- <script>
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
        </script> -->
    <!-- </form> -->
</body>

<!-- Dk/Admin/InvestmentTotalReport.aspx EDB D 09:27:21 GMT -->
</html>
