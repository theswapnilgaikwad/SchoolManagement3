
<jsp:include page="../header.jsp" />

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<body  class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">


<!--     <form method="get" action="searchChequeClear" id="form1" modelAttribute="ChequeClearMOdelAttribute"> -->


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
        <h1 id="ContentPlaceHolder1_IdHeader">Cheque Clear</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Cheque Clear</li>
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




                     <div class="col-md-2">
                                <div class="form-group">
                                    <label>Type :</label>
                                        <select name="paymentType" id="paymentType" class="form-control" style="width: 100%;">
	<option value="">Select</option>
	<option value="pending">Pending</option>
	<option value="Clear">Clear</option>

</select>
                                    </div>
                               
                            </div>
                            
                            
                            
                            
                            
                            
                            
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>Branch :</label>
                                        <select name="branchType" id="branchType" class="form-control" style="width: 100%;">
	<option value="">Select</option>
	<option value="Main Office-001">Main Office - 001</option>
	<option value="Main Office-002">Main Office - 002</option>
	<option value="Main Office-003">Main Office - 003</option>

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
                                    <input name="fdate" type="date"  id="fdate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />                          
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
                                    <input name="tdate" type="date"  id="tdate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                 </div>
                              </div>
                           </div>
                           
                           
                           <div class="col-md-2">
                                 <div class="form-group">
                                    <label>Cheque No. :</label>
                                        <input name="chequeNo" type="text" id="chequeNo" class="form-control" Placeholder="A101" autocomplete="off" />
                                </div>
                            </div>
                           
                           
                           <div class="col-md-3">
                                 <div class="form-group">
                                      <label></label>
                                     <input type="submit"  onclick="getSelectedChequeClear();" name="ctl00$ContentPlaceHolder1$btnSearch" value="Search" id="ContentPlaceHolder1_btnSearch" class="btn btn-success pull-right margin-20" />
                                </div>
                            </div>


                    </div>

                  
                </div>
                
                
                
                <div class="box box-success" style="box-shadow:none;overflow:auto !important;">
                    <div class="box-header with-border">
                        <h3 class="box-title">Detail Search List</h3>
                    </div>
                   
                        <div class="box-body">
                            <div>
						
					<table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                 <caption>
                                   Cheque Clear
                                    
                                  
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">Id</th>
                                    <th scope="col">Payment Type</th>
                                    <th scope="col">Branch Type</th>
                                    <th scope="col">Date</th>
                                   <th scope="col">Cheque No</th>
                                    
                                    
                                 </tr>
                                  <tbody id="tableBody">
                                    
      							  </tbody>
                      ��������</table>


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
        <script src="dist/js/FetchRecord.js"></script>
        
        
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
        
        <!--  Account Section  -->
		<script src="dist/js/AccountSectionSearch.js"></script>
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
<!--     </form> -->
</body>

</html>
