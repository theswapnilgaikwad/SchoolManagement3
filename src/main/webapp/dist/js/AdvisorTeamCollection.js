//Ajax Code Starts Here
 function AdvisorTeamCollection()
{
	
 var advisorcode= document.getElementById("advisorcode").value;
 var fromdate= document.getElementById("fromdate").value;
 var todate= document.getElementById("todate").value;
 
  document.getElementById("FromDate").innerHTML = fromdate;
  document.getElementById("ToDate").innerHTML = todate;
  document.getElementById("Advisorcode").innerHTML = advisorcode;
  
  
 $.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'getAdvisorTeamCollection1',
     data:{Advisorcode: advisorcode, Fromdate :fromdate, Todate :todate},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			
			 const tableData = data.map(function(value){
                 return (
                		 
                    ` <tr>
                         <td>${value.teamselfsummary}</td> 
						 <td>${value.date}</td>     
					     <td>${value.policyno}</td>   
					     <td>${value.ino}</td>  
					     <td>${value.applicationname}</td> 
					     <td>${value.plancode}</td>  
					     <td>${value.advisorcode}</td>  
					     <td>${value.amount}</td>  
					     <td>${value.clearedamount}</td>  
					     <td>${value.unclearedamount}</td>  
					     <td>${value.paymode}</td>  
					     <td>${value.chqno}</td>   
					        
                         
                     </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#tabelBody");
             tabelBody.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });

 }