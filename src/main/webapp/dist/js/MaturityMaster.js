function MaturityMaster()
{
	const dinstFrom = document.getElementById("dinstFrom");
	const dinstTo = document.getElementById("dinstTo");
	const droi = document.getElementById("droi");
	const ddeduction = document.getElementById("ddeduction");

	if (dinstFrom.value === '')
	{ 
    var span = document.getElementById("dinstFrommsg"); 
    span.textContent = "Enter Inst. From"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (dinstTo.value === '')
	{ 
    var span = document.getElementById("dinstTomsg"); 
    span.textContent = "Enter Inst.To"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (droi.value === '')
	{ 
    var span = document.getElementById("droimsg"); 
    span.textContent = "Enter ROI"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (ddeduction.value === '')
	{ 
    var span = document.getElementById("ddeductionmsg	"); 
    span.textContent = "Enter Deduction"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (status === true) 
    { 
     document.form1.submit(); 
     return true; 
    } 
    else 
    { 
     return false; 
    } 
}

//Ajax Code Starts Here
 function MaturityMasterAjax()
{	
 var dplanCode = document.getElementById("dplanCode").value;
 var dinstFrom = document.getElementById("dinstFrom").value;
 var dinstTo = document.getElementById("dinstTo").value;
 var droi = document.getElementById("droi").value;
 var ddeduction = document.getElementById("ddeduction").value;
 
 $.ajax({
	 type:"post",
     contentType: "application/json",
     url: 'maturityMaster1',
     data:{DplanCode: dplanCode, DinstFrom: dinstFrom, DinstTo: dinstTo, Droi: droi, Ddeduction: ddeduction},
     asynch: false,
     success: function(data) {  
	
	      alert("Data Saved");
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }