/**
 * 
 */
 function RetriveDataIns(){
	
         var ids = document.getElementById("searchbyPolicyNo").value;
	
	 $.ajax({
		
		          type:"get",
                        contentType: "application/json",
                        url: 'FetcInstallmets',
      					data: {searchbyPolicyNo:ids },
                        asynch: false,
    
                   success: function(data) {
	
                    
	                 
                   	for (var i = 0; i < data.length; i++) {
						



							const tableData = data.map(function(value){
                 return (
                		
                		 
                     `<tr>
            
            <td>${value.id}</td>           
            <td>${value.term}</td>
      
            
        
                         
                     </tr>`
                 );
             }).join('');
         const tabelBody = document.querySelector("#tableinstallmet");
             tableinstallmet.innerHTML = tableData;
                    
                   	}
                   } ,
           	    error: function(){
           	    	alert("Device control failed");
           	    }
		

		
		
		});
		
		
	
	}
