/**
 * 
 */
 //SaveOperationPlan 
 function SaveLoanPlan(){
	const obj ={
		loanName: document.getElementById("loanName").value,
		loanType: document.getElementById("loanType").value,
		emiCollection: document.getElementById("emiCollection").value,
		roiType: document.getElementById("roiType").value,
		emiType: document.getElementById("emiType").value,
		minAge: document.getElementById("minAge").value,
		maxAge: document.getElementById("maxAge").value,
		minAmount: document.getElementById("minAmount").value,
		maxAmount: document.getElementById("maxAmount").value,
		planStatus: document.getElementById("planStatus").value,
		mStringerm: document.getElementById("mStringerm").value,
		maxTerm: document.getElementById("maxTerm").value,
		ROI: document.getElementById("ROI").value,
		securityType: document.getElementById("securityType").value,
		processingFee: document.getElementById("processingFee").value,
		legalAmt: document.getElementById("legalAmt").value,
		GST: document.getElementById("GST").value,
		insuranceAmt: document.getElementById("insuranceAmt").value,
		valuerfees: document.getElementById("valuerfees").value,
		gracePeriodDays: document.getElementById("gracePeriodDays").value,
		penaltyType: document.getElementById("penaltyType").value,
		penalty: document.getElementById("penalty").value,
		
		
	};
	const myJSon = JSON.stringify(obj);
	
	$.ajax({
		type:"POST",
     	url: 'saveLoanPlan',
     	dataType:"json",
     	data: myJSon,
     	contentType: "application/json",
     	success: function(data){
			swal("New Record Saved..!!","","success");
		},
		error: function(){
			alert("Data Not Saved");
		}
		
	});
	}