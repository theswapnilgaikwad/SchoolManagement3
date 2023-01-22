/* DAILY DEPOSITE */
function dailyDeposite()
{
	const dplancode = document.getElementById("dplancode");
	const dinstfrom = document.getElementById("dinstfrom");
	const dinstto = document.getElementById("dinstto");
	const droi = document.getElementById("droi");
	const ddeduction = document.getElementById("ddeduction");
	var status = true;

	if (dplancode.value === '')
	{ 
    var span = document.getElementById("dplancodemsg"); 
    span.textContent = "Select Plan Code"; 
    span.style.display = "block"; 
    status = false; 
    }
	if (dinstfrom.value === '')
	{ 
    var span = document.getElementById("dinstFrommsg"); 
    span.textContent = "Enter Inst. From"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (dinstto.value === '')
	{ 
    var span = document.getElementById("dinstTomsg"); 
    span.textContent = "Enter Inst.To"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (droi.value === '')
	{ 
    var span = document.getElementById("droimsg"); 
    span.textContent = "Enter ROI"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (ddeduction.value === '')
	{ 
    var span = document.getElementById("ddeductionmsg	"); 
    span.textContent = "Enter Deduction"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (status === true) 
    { 
     document.Jyotiform1.submit(); 
     return true; 
    } 
    else 
    { 
     return false; 
    } 
}

/* RECURRING DEPOSITE */
function recurringDeposite()
{
	const rplancode = document.getElementById("rplancode");
	const rinstfrom = document.getElementById("rinstfrom");
	const rinstto = document.getElementById("rinstto");
	const rroi = document.getElementById("rroi");
	const rdeduction = document.getElementById("rdeduction");
	var status = true;

	if (rplancode.value === '')
	{ 
    var span = document.getElementById("rplancodemsg"); 
    span.textContent = "Select Plan Code"; 
    span.style.display = "block"; 
    status = false; 
    }
	if (rinstfrom.value === '')
	{ 
    var span = document.getElementById("rinstfrommsg"); 
    span.textContent = "Enter Inst. From"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (rinstto.value === '')
	{ 
    var span = document.getElementById("rinsttomsg"); 
    span.textContent = "Enter Inst.To"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (rroi.value === '')
	{ 
    var span = document.getElementById("rroimsg"); 
    span.textContent = "Enter ROI"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (rdeduction.value === '')
	{ 
    var span = document.getElementById("rdeductionmsg"); 
    span.textContent = "Enter Deduction"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (status === true) 
    { 
     document.Jyotiform1.submit(); 
     return true; 
    } 
    else 
    { 
     return false; 
    } 
}

/* FIXES DEPOSITE */
function fixesDeposite()
{
	const fplancode = document.getElementById("fplancode");
	const fmonthfrom = document.getElementById("fmonthfrom");
	const fmonthto = document.getElementById("fmonthto");
	const froi = document.getElementById("froi");
	const fdeduction = document.getElementById("fdeduction");
	var status = true;

	if (fplancode.value === '')
	{ 
    var span = document.getElementById("fplancodemsg"); 
    span.textContent = "Select Plan Code"; 
    span.style.display = "block"; 
    status = false; 
    }
	if (fmonthfrom.value === '')
	{ 
    var span = document.getElementById("fmonthfrommsg"); 
    span.textContent = "Enter Inst. From"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (fmonthto.value === '')
	{ 
    var span = document.getElementById("fmonthtomsg"); 
    span.textContent = "Enter Inst.To"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (froi.value === '')
	{ 
    var span = document.getElementById("froimsg"); 
    span.textContent = "Enter ROI"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (fdeduction.value === '')
	{ 
    var span = document.getElementById("fdeductionmsg"); 
    span.textContent = "Enter Deduction"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (status === true) 
    { 
     document.Jyotiform1.submit(); 
     return true; 
    } 
    else 
    { 
     return false; 
    } 
}

/* MIS DEPOSITE */
function msiDeposite()
{
	const mISplancode = document.getElementById("mISplancode");
	const mISmonthfrom = document.getElementById("mISmonthfrom");
	const mISmonthto = document.getElementById("mISmonthto");
	const mISROI = document.getElementById("mISROI");
	const mISdeduction = document.getElementById("mISdeduction");
	var status = true;

	if (mISplancode.value === '')
	{ 
    var span = document.getElementById("mISplancodemsg"); 
    span.textContent = "Select Plan Code"; 
    span.style.display = "block"; 
    status = false; 
    }
	if (mISmonthfrom.value === '')
	{ 
    var span = document.getElementById("mISmonthfrommsg"); 
    span.textContent = "Enter Inst. From"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (mISmonthto.value === '')
	{ 
    var span = document.getElementById("mISmonthtomsg"); 
    span.textContent = "Enter Inst.To"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (mISROI.value === '')
	{ 
    var span = document.getElementById("mISROImsg"); 
    span.textContent = "Enter ROI"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (mISdeduction.value === '')
	{ 
    var span = document.getElementById("mISdeductionmsg"); 
    span.textContent = "Enter Deduction"; 
    span.style.display = "block"; 
    status = false; 
    } 
    if (status === true) 
    { 
     document.Jyotiform1.submit(); 
     return true; 
    } 
    else 
    { 
     return false; 
    } 
}


