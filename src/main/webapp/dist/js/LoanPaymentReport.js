//javaScript code Starts Here

 function LoanPaymentReportJS()
 { 
 	
  const selectbranch= document.getElementById("selectbranch"); 
  	
   if (selectbranch.value === '') 
   { 
 	
    var span = document.getElementById("selectbranchMsg"); 
    span.textContent = "Select Branch."; 
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




//1Ajax Code Starts Here

 function LoanPaymentReportAjax()
{
	

 var branch= document.getElementById("selectbranch").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 
 //for date display

 
 $.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'LoanPaymentReport1',
     data:{Branch:branch, Fromdate: fromdate, Todate:todate},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			
			 const tableData = data.map(function(value){
                 return (
                		 
                	` <tr>
						 <td>${value.slno}</td>     
					     <td>${value.loanid}</td>  
					     <td>${value.membercode}</td>  
					     <td>${value.membername}</td>   
					     <td>${value.loandate}</td> 
					     <td>${value.branch}</td> 
					     <td>${value.loanname}</td> 
					     <td>${value.loanamount}</td> 
					     <td>${value.term}</td> 
					     <td>${value.mode}</td> 
					     <td>${value.roi}</td> 
					     <td>${value.appdate}</td> 
					     <td>${value.paydate}</td> 
					     <td>${value.paymode}</td> 
					     <td>${value.paydetails}</td>  
                     </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#table");
             table.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }
