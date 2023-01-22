/**
 * 
 */
 
 //FetchOnComponent
 
 function FetchDetail(){
	
	var ids = document.getElementById("id").value;
	
	
	
	 
	 $.ajax({
		
		
		                type:"get",
                        contentType: "application/json",
                        url: 'Fetchadvdetail',
      					data: {id:ids },
                        asynch: false,
    
                         success: function(data) {
	
					
	                   
                   	for (var i = 0; i < data.length; i++) {
	

						document.getElementById("advisorName").value = data[i].memberName;
						document.getElementById("position").value = data[i].position;
						
						
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		
		
	});
	
}

//Show  data in Tables
 function ShowDetails(){
	
         var ids = document.getElementById("id").value;
	
	 $.ajax({
		
		          type:"get",
                        contentType: "application/json",
                        url: 'FetcHPositiondata',
      					data: {id:ids },
                        asynch: false,
    
                   success: function(data) {
	
                    
	                 
                   	for (var i = 0; i < data.length; i++) {
						



							const tableData = data.map(function(value){
                 return (
                		
                		 
                     `<tr>
            <td>${value.memberId}</td>
            <td>${value.id}</td>           
            <td>${value.memberName}</td>
            <td>${value.position}</td>
        
                         
                     </tr>`
                 );
             }).join('');
         const tabelBody = document.querySelector("#tableBodyAdvisor");
             tableBodyAdvisor.innerHTML = tableData;
                    
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		

		
		
		});
		
		
	
	}



