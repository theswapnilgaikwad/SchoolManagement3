/**
 * 
 */
 

//   Search Option for the Receive Voucher 
   
 function validateFormFields(){ 
  const fDate= document.getElementById("fDate"); 
  const tDate= document.getElementById("tDate"); 
   if (fDate.value === '') { 
    var span = document.getElementById("fDateMsg"); 
    span.textContent = "From Date ."; 
    span.style.display = "block"; 
    status = false; 
    } 

    if (tDate.value === '') { 
    var span = document.getElementById("tDateMsg"); 
    span.textContent = "TO Date "; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (status === true) { 
     document.myForm.submit(); 
     return true; 
    } else { 
     return false; 
    } 

} 

//   Save Operation For the REceive Voucher

function validateFormFieldSave(){ 
  const selectBranch= document.getElementById("selectBranch"); 
  const txnDate= document.getElementById("txnDate"); 
  const selectType= document.getElementById("selectType");
  const directTransfer= document.getElementById("directTransfer");
  const selectLedger= document.getElementById("selectLedger");
  const amount= document.getElementById("amount");
  const narration= document.getElementById("narration");
  
  
  
   if (selectBranch.value === '') { 
    var span = document.getElementById("selectBranchMsg"); 
    span.textContent = "Select Branch Msg"; 
    span.style.display = "block"; 
    status = false; 
    } 

    if (txnDate.value === '') { 
    var span = document.getElementById("txnDateMsg"); 
    span.textContent = "Txn Date Msg "; 
    span.style.display = "block"; 
    status = false; 
    } 
    
    
     if (selectType.value === '') { 
    var span = document.getElementById("selectTypeMsg"); 
    span.textContent = "Select Type "; 
    span.style.display = "block"; 
    status = false; 
    } 
    
    
    if (directTransfer.value === '') { 
    var span = document.getElementById("directTransferMsg"); 
    span.textContent = "Direct Transfer "; 
    span.style.display = "block"; 
    status = false; 
    } 
    
    
    if (selectLedger.value === '') { 
    var span = document.getElementById("selectLedgerMsg"); 
    span.textContent = "Select Ledger "; 
    span.style.display = "block"; 
    status = false; 
    } 
    
    if (amount.value === '') { 
    var span = document.getElementById("amountMsg"); 
    span.textContent = "Amount  "; 
    span.style.display = "block"; 
    status = false; 
    } 
    
    
     if (narration.value === '') { 
    var span = document.getElementById("narrationMsg"); 
    span.textContent = "Narration  "; 
    span.style.display = "block"; 
    status = false; 
    } 
    
    
    if (status === true) { 
     document.myFormSAve.submit(); 
     return true; 
    } else { 
     return false; 
    } 

} 

