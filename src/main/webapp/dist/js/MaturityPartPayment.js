
function MaturityPartPaymentAjax(){
	
	var policyno = document.getElementById("policyno").value;
	
	$.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'getmaturityPartPayment',
     data:{Policyno:policyno},
     asynch: false,
     success: function(data) {  
	
	      for (var i = 0; i < data.length; i++)
	       {
			 document.getElementById("Pno").value=data[i].policyno;
			 document.getElementById("applicantname").value=data[i].applicantname;
			 document.getElementById("planname").value=data[i].planname;
			 document.getElementById("plancode").value=data[i].plancode;
			 
			 document.getElementById("term").value=data[i].term;
			 document.getElementById("policyamount").value=data[i].policyamount;
			 document.getElementById("actualmaturity").value=data[i].actualmaturity;
			 document.getElementById("maturitydate").value=data[i].maturitydate;
			 
			 document.getElementById("syspayable").value=data[i].syspayable;
			 document.getElementById("deduction").value=data[i].deduction;
			 document.getElementById("adjustment").value=data[i].adjustment;
			 document.getElementById("netpayable").value=data[i].netpayable;
			 
			 document.getElementById("approvalbranch").value=data[i].approvalbranch;
			 document.getElementById("approvaldate").value=data[i].approvaldate;
			 document.getElementById("approveremarks").value=data[i].approveremarks;
			 document.getElementById("approveuser").value=data[i].approveuser;
			 
			 document.getElementById("paidamount").value=data[i].paidamount;
			 document.getElementById("dueamount").value=data[i].dueamount;
			 
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });	
}

function MaturityPartPaymentSearch()
{
	var policyno = document.getElementById("policyno").value;
	var amount = document.getElementById("amount").value;
	var paymentdate = document.getElementById("paymentdate").value;
	var paybranch = document.getElementById("paybranch").value;
	var paymentby = document.getElementById("paymentby").value;
	
	$.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'updatematurityPartPayment',
     data:{Policyno:policyno,Amount:amount,Paymentdate:paymentdate,Paybranch:paybranch,Paymentby:paymentby},
     asynch: false,
     success: function(data) {  
	
	 swal("Data Updated Successfully..!!","","success");
	      
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });	 
}