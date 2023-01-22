
<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

</style>

<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
        
         <div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
          <!-- Header Start-->
         <jsp:include page="../menu.jsp" />
         <!-- Header End -->
         <!-- Left side column. contains the logo and sidebar -->
         <!-- Aside Menu Start-->
         <jsp:include page="../asideMenu.jsp" />
         
         
          <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                
        <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Policy Statement</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Statement</li>
        </ol>
    </section>
    <section class="content">
        
        <div class="row">
            <div class="col-md-12">
                <div class="box box-warning">
                    <div class="box-header with-border">
                        <h3 class="box-title">Search Box</h3>
                    </div>
                    <div class="form-horizontal">
                        <div class="box-body">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label >Select by Policy No.<strong style="color: Red">*</strong></label>
                                     <select name="policyno" id="policyno" class="form-control select2" style="width: 100%;">
	                                 <option >All</option>
	                                  <option value="001">001</option>
	                                  <option value="002">002</option>
                                     </select>
                                </div>
                            </div>
                             <div class="col-md-9">
                                 <div class="form-group">
                                      <label></label>
                                      
                                      <button type="submit" name="btnsearch" onclick="policyStatement();"  id="btnsearch" class="btn btn-success pull-right margin-r-5 margin-20">SEARCH </button>
                                    
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="box box-success" style="box-shadow:none;overflow:auto !important;">

                        <div class="box-header with-border">
                        <div class="box-tools pull-right">
                            
                        </div>
                        </div>
                        <div class="box-body">
                        <div class="clearfix margin-bottom-10"></div>
                          <table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                  
                                  <tr style="color:White;background-color:#008385;">                            
                                  <td>CSP Name</td>
                                  <td>Address</td>
                                  <td>Advisor Code</td>
                                  <td>Advisor Name</td>
                                  <td>Age</td>
                                  <td>CHKIS SMS</td>
                                  <td>District</td>
                                  <td>DOB</td>
                                  <td>Joint Code</td>
                                  <td>Joint Name</td>
                                  <td>M Date</td>
                                  <td>MIS Interest</td>
                                  <td>Maturity Amount</td>
                                  <td>Member Name</td>
                                  <td>MIS Mode</td>
                                  <td>Mode</td>
                                  <td>Mode of OP</td>
                                  <td>Nominee Age</td>
                                  <td>Nominee Name</td>
                                  <td>Nominee Relation</td>
                                  <td>Paymode</td>
                                  <td>Phone No</td>
                                  <td>Pin</td>
                                  <td>Policy Amount</td>
                                  <td>Policy Date</td>
                                  <td>Relative Name</td>
                                  <td>Remark</td>
                                  <td>Scheme Name</td>
                                  <td>Scheme Type</td>
                                  <td>Search Member Code</td>
                                  <td>State</td>
                                  <td>Term</td>
                                  <td>Total Deposit</td>
                                  <td>Policy No</td>
                                  </tr>     
                                   <tbody id="tablepolicy">
                                    
      							  </tbody>    
                                 
                                  
                                 <caption style="font-weight:bold; text-align:center;">
                                    Policy Statement Report
                                    
                                 </caption>       
                            </table>
                            
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
        <!-- Policy Statement -->
        <script src="dist/js/investmentSection.js"></script>
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
            

</body>


</html>
