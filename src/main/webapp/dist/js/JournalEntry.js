function validateJournalEntry() {
	var status = true;
	
	const selectbranch = document.getElementById("selectbranch");
	if (selectbranch.value === '') {
		var span = document.getElementById("selectbranch");
		span.textContent = "Select Branch";
		span.style.display = "block";
		status = false;
	}
	
	const receiptno = document.getElementById("receiptno");
	if (receiptno.value === '') {
		var span = document.getElementById("receiptno");
		span.textContent = "Receipt No.";
		span.style.display = "block";
		status = false;
	}
	
	
	const txndate = document.getElementById("txndate");
	if (txndate.value === '') {
		var span = document.getElementById("txndate");
		span.textContent = "Enter TXN No.";
		span.style.display = "block";
		status = false;
	}
	
	
	const selectcrledger = document.getElementById("selectcrledger");
	if (selectcrledger.value === '') {
		var span = document.getElementById("selectcrledger");
		span.textContent = "Select Ledger Type.";
		span.style.display = "block";
		status = false;
	}
	
	
	const selectdrledger = document.getElementById("selectdrledger");
	if (selectdrledger.value === '') {
		var span = document.getElementById("selectdrledger");
		span.textContent = "Select Ledger Type.";
		span.style.display = "block";
		status = false;
	}
	
	const amount = document.getElementById("amount");
	if (amount.value === '') {
		var span = document.getElementById("amount");
		span.textContent = "Enter Amount.";
		span.style.display = "block";
		status = false;
	}
	
	const remarks = document.getElementById("remarks");
	if (remarks.value === '') 
	{
		var span = document.getElementById("remarks");
		span.style.display = "block";
		status = false;
	}
	
	if (status === true)
	 {
		document.myForm.submit();
		return true;
	} 
	
	else {
		return false;
	}
	
}

function getJournalEntry()
{
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllGoldLoan',
		asynch: false,
		success: function(data){
			{
				const tableData3 = data.map(function(value)
				 {
					return (
						`<tr>
                         
                                <td>${value.id}</td>
                                <td>${value.lockerLocation}</td>
                                <td>${value.lockerAddress}</td>
                         </tr>`
					);
				})
				
				.join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvLocker");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
			
			
		}
		
		
	});
}

