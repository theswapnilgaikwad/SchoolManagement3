<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body class="skin-blue sidebar-mini" style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true">
    <!-- <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/CSPCashTransfer.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1">
 -->


<script src="../WebResourcea077.js?d=aKrB3Wg4ktcAdLzfwHNclnzQJginAX-WDxEXiKln398ZfxSpl5en7e6-r-t6qAS--33aKUyvVcAR5D4ulS_TNNrAx-wX18laGa3-ySpD_j01&amp;t=637290976998988531" type="text/javascript"></script>


<script src="../ScriptResource8794.js?d=pl0DaltFZ-nCqZWgxNAqTvBniAbIZw3Iz1bSYE7rwyGDxh1etqVx0WLbkkAE88KWETjjkMMzd-H0InR9BngAQbQfYcq-ENJYTXgawkPhXCZJsAGJSSC1KoJTErXiWh7tEcXp6rwjlayV_PcTh7M4M8rvifeWAlJsyUFxR9AUwO81&amp;t=5334fc78" type="text/javascript"></script>
<script src="../ScriptResourced8e7.js?d=uSqqCHFE8MMix38uq8GgGybxYtpH6dYwFMSYHjhHytO5jH1yPS2uWYjdlBZZSuu9t5CBFsRRRI6lEwvTTYPraDdistIqSYPDLCP6VorXyjIpQTji_JKtdkLVZLH_mYVZvHI4YJqUtS662n__8I2atI54HJ4NkBUVIeVAPnAuCTI1&amp;t=2a797f5c" type="text/javascript"></script>
<script src="../ScriptResourceb4d6.js?d=KzKHuQVzCI25ZiHK9SA2HZdRjaymXCFpWiizBRMk8lvEiiZsQoLPz0ARKvRH6PmSA3Tt96qvSLsIOMPBDLx_VBsyISpzBQoSBrYr5izAbtKSWsBVrS0pYd7veJqhmzHYrhKgOEJXiOei6ZrcxpAdqnYxCXhjNIW9HOvs7dp7o0kgl18uTZv1SVlBuafpWq2x0&amp;t=2a797f5c" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
function WebForm_OnSubmit() {
if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
return true;
}
//]]>
</script>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="1A475DD9" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAkHjIc5IBDjEETfGuWzlKa6XXhtDrRv6st/qI+x+N0hz4VNppXIEHMAIHNnY0nj1N3NLwNnpX7SaGgjTqu3VexiyoYSx/mk2mmiDHKQehsRr1GeHiPDFRWNbN94AjA78Bl04QulNZy/pteeoj2Lfjf7K/9l5sxALBGjznv8QFKYgMuo1RFu8xwss4OiPHNjbtmw+uFFBzC4th1jiTpnHFouVXg8qNrZ+MnxBTXSB+PEXA==" />
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
        <h1 id="ContentPlaceHolder1_IdHeader">Branch Cash Transfer</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Branch Cash Transfer</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Enter Details</h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-12">


                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Transfer Date :</label>
                                <div class="col-sm-7">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input name="transferDate" type="date" id="transferDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>
                                    <span id="transferDatemsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Transfer Date</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">From Branch <strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <select name="fromBranch" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$ddlFBranch\&#39;,\&#39;\&#39;)&#39;, 0)" id="fromBranch" class="form-control" style="width: 100%;">
										<option value="Main Office - 001">Main Office-001</option>
										<option value="Main Office - 002">Main Office-002</option>
										<option value="Main Office - 003">Main Office-003</option>
										
									</select>
									<span id="fromBranchmsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select To Branch</span> 
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">To Branch <strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <select name=toBranch id="toBranch" class="form-control" style="width: 100%;">
										<option value="Main Office - 001">Main Office-001</option>
										<option value="Main Office - 002">Main Office-002</option>
										<option value="Main Office - 003">Main Office-003</option>
									</select>
									<span id="toBranchmsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select To Branch</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-5 control-label">Amount <strong style="color: Red">*</strong></label>
                                <div class="col-sm-7">
                                    <input name="amount" type="text" id="amount" class="form-control" Placeholder="Enter Amount" autocomplete="off" />
                                    <span id="amountmsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Amount</span>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="box-footer">
                        <div class="row col-md-12">

                            <button type="submit" name="btnSave" onclick="BranchCashTransferAjax(); BranchCashTransfer();" id="btnSave" class="btn btn-success pull-right margin-r-5" >Transfer</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
             <div class="col-md-12">
                 <div class="box box-success" style="box-shadow: none; overflow: auto !important;">
                        <div class="box-body">
                            <div class="clearfix margin-bottom-10"></div>

                            	 <table cellspacing="0" cellpadding="3" rules="all" class="display nowrap table table-hover table-striped table-bordered" 
                              				border="1"  style="width:100%;border-collapse:collapse;">
                                 	<caption>
                                    	
                                 	</caption>
                                 	<tr style="color:White;background-color:#008385;">
                                 	
                                    	<th scope="col">Date</th>
                		 				<th scope="col">Name</th>
                		 				<th scope="col">Amount </th>
                		 				
                                 	</tr>
                                  	<tbody id="table">
                                    
      							  	</tbody>
      							  	
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
        <script src="dist/js/BranchCashTransfer.js"></script>
        <!-- Select2 -->
        <script src="bower_components/select2/dist/js/select2.full.min.js"></script>
        
<!-- </form> -->
</body>
</html>
