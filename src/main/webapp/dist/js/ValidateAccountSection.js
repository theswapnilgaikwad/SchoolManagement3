function validateFormFields(){ 
  const Branch= document.getElementById("Branch1"); 
  const txnDate= document.getElementById("txnDate");
   const selectType= document.getElementById("selectType"); 
    const directTransfer= document.getElementById("directTransfer"); 
     const selectLedger= document.getElementById("selectLedger"); 
      const amount= document.getElementById("amount");  
  
  var status= true;
  
   if (Branch.value =="") { 
    var span = document.getElementById("selectBranchMsg"); 
    span.textContent = "Select Branch"; 
    span.style.display = "block"; 
    status = false; 
    }  if (txnDate.value =="") { 
    var span = document.getElementById("txnDateMsg"); 
    span.textContent = "Date Required"; 
    span.style.display = "block"; 
    status = false; 
    }  if (selectType.value =="") { 
    var span = document.getElementById("selectTypeMsg"); 
    span.textContent = "Select Type"; 
    span.style.display = "block"; 
    status = false; 
    }  if (directTransfer.value =="") { 
    var span = document.getElementById("directTransferMsg"); 
    span.textContent = "Select Direct Transfre"; 
    span.style.display = "block"; 
    status = false; 
    }   if (selectLedger.value == "") { 
    var span = document.getElementById("selectLedgerMsg"); 
    span.textContent = "Select Ledger"; 
    span.style.display = "block"; 
    status = false; 
    }  if (amount.value == "") { 
    var span = document.getElementById("amountMsg"); 
    span.textContent = "Select Amount"; 
    span.style.display = "block"; 
    status = false; 
    } 
    
    
    
    
    if (status == true) { 
     document.myFormSAve.submit(); 
     return true; 
    } else { 
     return false; 
    } 

} 