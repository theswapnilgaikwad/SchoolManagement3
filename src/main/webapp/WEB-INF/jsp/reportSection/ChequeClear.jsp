
<jsp:include page="../header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
   <!--  <form method="get" action="ChequeClear" id="form1" modelAttribute=""> -->


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
                        <h3 class="box-title">Search Box</h3>
                         
                    </div>
                   
                        <div class="box-body">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>Type :</label>
                                        <select name="type" id="type" class="form-control" style="width: 100%;">
											<option>All</option>
											<option value="Pending">Pending</option>
											<option value="Clear">Clear</option>

											</select>
                                    </div>
                               
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>Branch :</label>
                                        <select name="branch" id="branch" class="form-control" style="width: 100%;">
										<option>All Branch</option>
										<option value="Main Office-001">Main Office-001</option>

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
                                          <input name="fromdate" type="date"  id="fromdate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />                          
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
                                   
                                          <input name="todate" type="date"  id="todate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                          
                          
                                    </div>
                                         
                                   
                                </div>
                            </div>
                           
                            <div class="col-md-2">
                                 <div class="form-group">
                                    <label>Cheque No. :</label>
                                        <input name="chequeno" type="text" id="chequeno" class="form-control" Placeholder="Enter Cheque No." autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-2">
                                 <div class="form-group">
                                    <label></label>
                                     <button type="submit"  onclick="ChequeClearAjax1();" class="btn btn-success pull-right margin-20" >Search</button>
                                </div>
                            </div>
                              <div class="clearfix margin-bottom-10"></div>

                           
                        </div>
                    
                </div>

                <div class="box box-success" style="box-shadow:none;overflow:auto !important;">
                    <div class="box-header with-border">
                        <h3 class="box-title">Detail Search List</h3>
                       
                       
                        
                     <!--Table Starts Here  -->
                   	<div>
                   	                    
						<table cellspacing="0" cellpadding="0" rules="all" 
                              class="display nowrap table table-hover table-striped table-bordered" 
                              border="1"  style="width:100%;border-collapse:collapse;">
                                 
                               <tr style="color:White;background-color:#008385;">
                                   <th scope="col">Type</th>
                		 			<th scope="col">Branch</th>
                		 			<th scope="col">Txn Date</th>
                		 			<th scope="col">Cheque No:</th> 
                                    
                                 </tr>
                                  <tbody id="table">
                                    
      							  </tbody>
                              </table>
                   	</div>
                        
                        
                        
                    </div>
                   	
        
                        <div class="box-body">
       					 <div>
       					 
       					 
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
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
        <script src="dist/js/ChequeClear.js"></script>
        
        
     -->   <!--  </form> -->
</body>

</html>
