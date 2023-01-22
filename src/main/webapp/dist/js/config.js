function enableDisabledField() {
	//document.getElementById("companyName").disabled = false;
	document.getElementById("shortName").disabled = false;
	document.getElementById("doj").disabled = false;
	document.getElementById("cin").disabled = false;
	document.getElementById("pan").disabled = false;
	document.getElementById("tan").disabled = false;
	document.getElementById("gst").disabled = false;
	document.getElementById("shareValue").disabled = false;
	document.getElementById("address").disabled = false;
	document.getElementById("state").disabled = false;
	document.getElementById("pinCode").disabled = false;
	document.getElementById("email").disabled = false;
	document.getElementById("authorizedcapital").disabled = false;
	document.getElementById("paidup").disabled = false;
	document.getElementById("landLine").disabled = false;
	document.getElementById("mobile").disabled = false;
	document.getElementById("TDSWithPAN").disabled = false;
	document.getElementById("TDSWithoutPAN").disabled = false;
	document.getElementById("tax").disabled = false;
	document.getElementById("taxSr").disabled = false;
	document.getElementById("updateBtn").disabled = false;
}

function getAllFYDetails(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllFYDetails',
		asynch: false,
		success: function(data) {
		for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
						  <td>${value.id}</td>
                                <td>${value.fyName}</td>
                                <td>${value.fDate}</td>
                                <td>${value.tDate}</td>
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvData_fymaster");
				tableBody3.innerHTML = tableData3;
			}
			
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function getConmapnyDetails() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getConmapnyDetails',
		asynch: false,
		success: function(data) {
			
			document.getElementById("companyName").value = data.companyName;
			document.getElementById("shortName").value = data.shortName;
			document.getElementById("doj").value = data.doj;
			document.getElementById("cin").value = data.cin;
			document.getElementById("pan").value = data.pan;
			document.getElementById("tan").value = data.tan;
			document.getElementById("gst").value = data.gst;
			document.getElementById("shareValue").value = data.shareValue;
			document.getElementById("address").value = data.address;
			document.getElementById("state").value = data.state;
			document.getElementById("pinCode").value = data.pinCode;
			document.getElementById("email").value = data.email;
			document.getElementById("authorizedcapital").value = data.authorizedcapital;
			document.getElementById("paidup").value = data.paidup;
			document.getElementById("landLine").value = data.landLine;
			document.getElementById("mobile").value = data.mobile;
			document.getElementById("TDSWithPAN").value = data.TDSWithPAN;
			document.getElementById("TDSWithoutPAN").value = data.TDSWithoutPAN;
			document.getElementById("tax").value = data.tax;
			document.getElementById("taxSr").value = data.taxSr;
			
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function valdiateFyMaster(){
    var status = true;
	const fyName = document.getElementById("fyName");
	if (fyName.value === '') {
		var span = document.getElementById("fyNameMsg");
		span.style.display = "block";
		span.textContent = "Financial Year Name  cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.updateFYDetails.submit();
		return true;
	} else {
		return false;
	}
}

function validateNewBranch(){
	var status = true;
	const branchCode = document.getElementById("code");
	if (branchCode.value === '') {
		var span = document.getElementById("branchCodeMsg");
		span.style.display = "block";
		span.textContent = "Branch code cannot be empty.";
		status = false;
	}
	const branchName = document.getElementById("name");
	if (branchName.value === '') {
		var span = document.getElementById("branchNameMsg");
		span.style.display = "block";
		span.textContent = "Branch Name cannot be empty.";
		status = false;
	}
	const openingDate = document.getElementById("openingDate");
	if (openingDate.value === '') {
		var span = document.getElementById("openingDateMsg");
		span.style.display = "block";
		span.textContent = "Opening Date cannot be empty.";
		status = false;
	}
	const address = document.getElementById("address");
	if (address.value === '') {
		var span = document.getElementById("addressMsg");
		span.style.display = "block";
		span.textContent = "Address cannot be empty.";
		status = false;
	}
	const pin = document.getElementById("pin");
	if (pin.value === '') {
		var span = document.getElementById("pinMsg");
		span.style.display = "block";
		span.textContent = "Pin code cannot be empty.";
		status = false;
	}
	const state = document.getElementById("state");
	if (state.value === '') {
		var span = document.getElementById("stateMsg");
		span.style.display = "block";
		span.textContent = "state  cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.addBranch.submit();
		return true;
	} else {
		return false;
	}
	
}

function getAllBranchMaster(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranchMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
                                <td>${value.id}</td>
                                <td>${value.code}</td>
                                <td>${value.name}</td>
                                <td>${value.state}</td>
                                <td>${value.contactPerson}</td>
                                  <td>${value.contectNo}</td>
                                    <td>${value.openingDate}</td>
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvData-branchMaster");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function getAllBranchMasterForAddBank(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBranchMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
                                <td>${value.code}</td>
                                <td>${value.name}</td>
              					<td><input id="mappedBranch" type="checkbox" value="${value.name}" name="mappedBranch" />
              					</td>
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvBranchAddBank");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function validateAddBank(){
	var status = true;
	const bankName = document.getElementById("bankName");
	if (bankName.value === '') {
		var span = document.getElementById("bankNameMsg");
		span.style.display = "block";
		span.textContent = "Bank Name cannot be empty.";
		status = false;
	}
	const accountNo = document.getElementById("accountNo");
	if (accountNo.value === '') {
		var span = document.getElementById("accountNoMsg");
		span.style.display = "block";
		span.textContent = "Account Number cannot be empty.";
		status = false;
	}
	const mappedBranch = document.getElementById("mappedBranch");
	if (mappedBranch.checked == false) {
		var span = document.getElementById("mappedBranchMsg");
		span.style.display = "block";
		span.textContent = "Select at least one branch.";
		status = false;
	}
	if (status === true) {
		document.addBank.submit();
		return true;
	} else {
		return false;
	}
}


function getAllAddedBank(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllBankAccount',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
                                <td>${value.id}</td>
                                <td>${value.accountNo}</td>
              					<td>${value.bankName}</td>
              					<td>${value.mobileNo}</td>
              					<td>${value.openingDate}</td>
              					<td>${value.openingBalance}</td>
              					
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvDataAddBank");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function validateAddDirector(){
	var status = true;
	const branchName = document.getElementById("branchName");
	if (branchName.value === '') {
		var span = document.getElementById("branchNameMsg");
		span.style.display = "block";
		span.textContent = "Branch Name cannot be empty.";
		status = false;
	}
	const type = document.getElementById("type");
	if (type.value === '') {
		var span = document.getElementById("typeMsg");
		span.style.display = "block";
		span.textContent = "Type cannot be empty.";
		status = false;
	}
	const prefix = document.getElementById("prefix");
	if (prefix.value === '') {
		var span = document.getElementById("prefixMsg");
		span.style.display = "block";
		span.textContent = "prefix cannot be empty.";
		status = false;
	}
	const directorName = document.getElementById("directorName");
	if (directorName.value === '') {
		var span = document.getElementById("directorNameMsg");
		span.style.display = "block";
		span.textContent = "Director Name cannot be empty.";
		status = false;
	}
	const appointmentDate = document.getElementById("appointmentDate");
	if (appointmentDate.value === '') {
		var span = document.getElementById("appointmentDateMsg");
		span.style.display = "block";
		span.textContent = "Appointment Date cannot be empty.";
		status = false;
	}
	const mobileNo = document.getElementById("mobileNo");
	if (mobileNo.value === '') {
		var span = document.getElementById("mobileNoMsg");
		span.style.display = "block";
		span.textContent = "Mobile Number cannot be empty.";
		status = false;
	}
	const shareAmount = document.getElementById("shareAmount");
	if (shareAmount.value === '') {
		var span = document.getElementById("shareAmountMsg");
		span.style.display = "block";
		span.textContent = "Share Ammount cannot be empty.";
		status = false;
	}
	if (status === true) {
		document.addDirector.submit();
		return true;
	} else {
		return false;
	}
}



function getAllDirectorMaster(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllDirectorMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
                                <td>${value.type}</td>
                                <td>${value.id}</td>
              					<td>${value.directorName}</td>
              					<td>${value.dinNoPromoterNo}</td>
              					<td>${value.appointmentDate}</td>
              					<td>${value.shareAmount}</td>
              					<td> </td>
              					<td> </td>
              					<td> </td>
              					<td>${value.paymode}</td>
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvData_Director");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function setBranchInSelectOption(){
   	//relativeRelation
   	const select = document.getElementById("branchName");
    	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllBranchMaster',
            asynch: false,
            success: function(data) {
            	data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.name);
     			option.innerHTML = value.name
     			select.appendChild(option)
   			})
                
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

function validaeUser(){
	var status = true;
	const userId = document.getElementById("userId");
	if (userId.value === '') {
		var span = document.getElementById("userIdMsg");
		span.style.display = "block";
		span.textContent = "User Id cannot be empty.";
		status = false;
	}
	const password = document.getElementById("password");
	if (password.value === '') {
		var span = document.getElementById("passwordMsg");
		span.style.display = "block";
		span.textContent = "password cannot be empty.";
		status = false;
	}
	const email = document.getElementById("email");
	if (email.value === '') {
		var span = document.getElementById("emailMsg");
		span.style.display = "block";
		span.textContent = "email cannot be empty.";
		status = false;
	}
	const mappedBranch = document.getElementById("mappedBranch");
	if (mappedBranch.checked == false) {
		var span = document.getElementById("mappedBranchMsg");
		span.style.display = "block";
		span.textContent = "Select one branch";
		status = false;
	}
	
	if (status === true) {
		document.userCreation.submit();
		return true;
	} else {
		return false;
	}
}



function getAllUserMaster(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllUserMaster',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
                                <td>${value.userId}</td>
                                <td>${value.userType}</td>
              					<td>${value.mappedBranch}</td>
              					<td>${value.fullName}</td>
              					<td>${value.mobile}</td>
              					
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvUser");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}


function getAllUserToServiceMap(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllServiceMap',
		asynch: false,
		success: function(data) {
			//alert(data)
			for (let i = 0; i < 1; i++) {
				const tableData3 = data.map(function(value) {
					return (
						`<tr>
                                <td><b>${value.module}</b>  =>  </td>
              					<td>${value.name}</td>	
              					<td><input type="checkbox" name="service" value="${value.name}" /> </td>
                            </tr>`
					);
				}).join('');
				const tableBody3 = document.querySelector("#ContentPlaceHolder1_gdvUser_myServiceList");
				tableBody3.innerHTML = tableData3;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

function setUserIdInSelectOption(){
   	//relativeRelation
   	const select = document.getElementById("userId");
    	$.ajax({
            type:"get",
            contentType: "application/json",
            url: 'getAllUserMaster',
            asynch: false,
            success: function(data) {
            	data.forEach(value => {
            	//alert(value.name)
     			const option = document.createElement('option')
     			option.setAttribute('value', value.userId);
     			option.innerHTML = value.userId
     			select.appendChild(option)
   			})
                
            } ,
    	    error: function(){
    	    	alert("Device control failed");
    	    }
        });
}

function submitUserServiceMap(){
		document.userToServiceMap.submit();
		return true;
}