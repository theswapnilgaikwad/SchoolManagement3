<jsp:include page="../header.jsp" />
<body onload="getAllDepartment()"  class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
   <form method="post" action="saveDepartmentMasterData" name="saveDepartmentMasterData" 
    modelAttribute="saveDepartmentMasterData" id="form1">
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
               <h1 id="ContentPlaceHolder1_IdHeader">Add Department</h1>
               <ol class="breadcrumb">
                  <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
                  <li><a href="#">Dashboard</a></li>
                  <li class="active">Add Department</li>
               </ol>
            </section>
            <section class="content">
               <div class="row">
                  <div class="col-md-5">
                     <div class="box box-success">
                        <div class="box-header with-border">
                           <h3 class="box-title">Add Department Master </h3>
                        </div>
                        <div class="box-body">
                           <div class="col-md-12">
                              <div class="form-group row">
                                 <label class="col-sm-4 control-label">Department Name <strong style="color: Red">*</strong></label>
                                 <div class="col-sm-8">
                                    <input name="department" type="text" id="department" class="form-control" />
                                    <span id="departmentMsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Department Name</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="box-footer">
                           <div class="row col-md-12">
                               <button type="button" name="clear" value="Clear" id="clear" 
                              class="btn btn-info pull-right"
                              onclick="clearFieldsDepartment()" >Clear</button>
                              <button type="button" name="save" value="Save" onclick="return validateDepartmentMaster()" 
                              id="save" class="btn btn-success pull-right margin-r-5">Save</button>
                              
                              
                            </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-7">
                     <div class="box box-success">
                        <div class="box-body">
                           <div>
                              <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1" style="width:100%;border-collapse:collapse;">
                                 <caption>
                                    Department List
                                 </caption>
                                 <tr style="color:White;background-color:#008385;">
                                    <th scope="col">Slno</th>
                                    <th scope="col">Department Code</th>
                                    <th scope="col">Department Name</th>
                                 </tr>
                                
                              </table>
                              
                               <table cellspacing="0" cellpadding="3" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1" id="ContentPlaceHolder1_gvDepartment" 
                              style="width:100%;border-collapse:collapse;">

                                
                                 
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
         var Page_Validators =  new Array(document.getElementById("ContentPlaceHolder1_RequiredtxtDepartmentName"));
         //]]>
      </script>
      <script type="text/javascript">
         //<![CDATA[
         var ContentPlaceHolder1_RequiredtxtDepartmentName = document.all ? document.all["ContentPlaceHolder1_RequiredtxtDepartmentName"] : document.getElementById("ContentPlaceHolder1_RequiredtxtDepartmentName");
         ContentPlaceHolder1_RequiredtxtDepartmentName.controltovalidate = "ContentPlaceHolder1_txtDepartmentName";
         ContentPlaceHolder1_RequiredtxtDepartmentName.focusOnError = "t";
         ContentPlaceHolder1_RequiredtxtDepartmentName.errormessage = "Enter Department Name";
         ContentPlaceHolder1_RequiredtxtDepartmentName.display = "Dynamic";
         ContentPlaceHolder1_RequiredtxtDepartmentName.validationGroup = "A";
         ContentPlaceHolder1_RequiredtxtDepartmentName.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
         ContentPlaceHolder1_RequiredtxtDepartmentName.initialvalue = "";
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
                 
         document.getElementById('ContentPlaceHolder1_RequiredtxtDepartmentName').dispose = function() {
             Array.remove(Page_Validators, document.getElementById('ContentPlaceHolder1_RequiredtxtDepartmentName'));
         }
         //]]>
      </script>
   </form>
</body>
</html>