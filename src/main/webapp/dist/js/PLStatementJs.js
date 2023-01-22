
function plstatementajax()
{
	var branch= document.getElementById("selectbranch").value;
	var fdate= document.getElementById("fromdate").value;
    var tdate= document.getElementById("todate").value;
	
	
	$.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'getplstatement',
     data:{selectbranch:branch,fromdate:fdate,todate:tdate},
     asynch: false,
     success: function(data) {  
	
	      for (var i = 0; i < data.length; i++)
	       {
			
			 const tableData = data.map(function(value){
                 return (
                		 
                    `<tr>
                         <td>${value.branchname}</td>
						 <td>${value.pldate}</td>	
	                </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#tablepl");
             tablepl.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
}

function plstatementajaxFyYear()
{
	let branchname= document.getElementById("selectbranchfy").value;
	let selectyear= document.getElementById("selectfyearfyz").value;
	let fromdate= document.getElementById("fromdatefy").value;
   let todate= document.getElementById("todatefy").value;
	
	$.ajax({
	
	 type:"get",
     contentType:"application/json",
     url: 'getplstatementfyYear',
     data:{selectbranchfy:branchname,fromdatefy:fromdate,todatefy:todate,selectfyearfyz:selectyear},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			
			 
			 const tableData = data.map(function(value){
                 return (
                		 
                    `<tr>
                         <td>${value.branchname}</td>
						 <td>${value.dateYear}</td>
						 <td>${value.selectfyear}</td>
	                </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#tableplstatement2");
             tableplstatement2.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
	
}

