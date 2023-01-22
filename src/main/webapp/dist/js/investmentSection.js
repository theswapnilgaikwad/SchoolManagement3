function getAllPolicyNumber1(){
const shareAllotedfrm = document.getElementById("searchbyPolicyNo");
$.ajax({
	type: "get",
	contentType: "application/json",
	url: 'getAllPolicyNumber',
	asynch: false,
	success: function(data) {
		data.forEach(value => {
			const option = document.createElement('option')
			option.setAttribute('value', value.id);
			option.innerHTML = value.id
			shareAllotedfrm.appendChild(option)
		})

	},
	error: function() {
		alert("Device control failed");
	}
});
}

function getByAddInvesmentCode(){
	var searchbyPolicyNo = document.getElementById("searchbyPolicyNo");
		var input = {
                     "id": searchbyPolicyNo.value
             }
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getByAddInvesmentCode',
                 asynch: false,
                 success: function(data) {
                 	var x = Number(data.id)
                 	//alert(x)
                 	
                 	 document.getElementById("id").value = x;
                     document.getElementById("policyDate").value = data.policyDate;
                     document.getElementById("mDate").value = data.mDate;
                     document.getElementById("memberCode").value = data.searchMemberCode;
                     document.getElementById("applicantName").value = data.memberName;
                     document.getElementById("mobileNo").value = data.phoneno;
                      document.getElementById("PolicyAmount").value = data.policyAmount;
                      document.getElementById("schemeName").value = data.schemeName;
                      document.getElementById("schemeType").value = data.schemeType;
                      document.getElementById("maturityAmount").value = data.maturityAmount;
                      document.getElementById("totalDeposit").value = data.totalDeposit;
                      document.getElementById("chkisSms").value = data.chkisSms;
                      document.getElementById("advisorCode").value = data.advisorCode;
                      document.getElementById("advisorCode1").value = data.advisorCode;
                      document.getElementById("chkisSms").value = data.chkisSms;
                       document.getElementById("advisorName").value = data.advisorName;
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
}



function getByAddInvesmentCode1(){
	var searchbyPolicyNo = document.getElementById("searchbyPolicyNo");
		var input = {
                     "id": searchbyPolicyNo.value
             }
        $.ajax({
                 type:"post",
                 contentType: "application/json",
                 data: JSON.stringify(input),
                 url: 'getByAddInvesmentCode',
                 asynch: false,
                 success: function(data) {
                 	var x = Number(data.id)
                 	//alert(x)
                 	
                 	 document.getElementById("id").value = x;
                     document.getElementById("memberCode").value = data.searchMemberCode;
                      document.getElementById("mobileNo").value = data.phoneno;
                	
                 } ,
         	    error: function(){
         	    	alert("Device control failed");
         	    }
             });
    
 }
  function policyStatement()
  {
	var policyno= document.getElementById("policyno").value;
	
	$.ajax({
	
	 type:"get",
     contentType: "application/json",
     url: 'getpolicystatement',
     data:{Policyno: policyno},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			
			 
			 const tableData = data.map(function(value){
                 return (
                		 
                    ` <tr>
                         <td>${value.cspname}</td>
						 <td>${value.idaddress}</td>
						 <td>${value.advisor_code}</td>
						 <td>${value.advisor_name}</td>
						 <td>${value.age}</td>
						 <td>${value.chkis_sms}</td>
						 <td>${value.district}</td>
						 <td>${value.dob}</td>
			             <td>${value.joint_code}</td>
						 <td>${value.joint_name}</td>
			             <td>${value.m_date}</td>
			             <td>${value.misinterest}</td>
			             <td>${value.maturity_amount}</td>
		                 <td>${value.member_name}</td>
			             <td>${value.mis_mode}</td>
			             <td>${value.mode}</td>
						 <td>${value.mode_of_op}</td>
				         <td>${value.nominee_age}</td>
						 <td>${value.nominee_name}</td>
					     <td>${value.nominee_relation}</td>
						 <td>${value.paymode}</td>
				         <td>${value.phoneno}</td>
						 <td>${value.pin}</td>
				         <td>${value.policy_amount}</td>
			             <td>${value.policy_date}</td>
						 <td>${value.relative_name}</td>
						 <td>${value.remarks}</td>
						 <td>${value.scheme_name}</td>
						 <td>${value.scheme_type}</td>
			             <td>${value.search_member_code}</td>
						 <td>${value.state}</td>
						 <td>${value.term}</td>
			             <td>${value.total_deposit}</td>
			             <td>${value.policyno}</td>
						     
                     </tr>`
                 );
             })
             
             .join('');
        	 const tabelBody = document.querySelector("#tablepolicy");
             tablepolicy.innerHTML = tableData;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
	
	        
}