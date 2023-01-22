package com.society.application.controler;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.GenericGetById;
import com.society.application.model.ItemMaster;
import com.society.application.model.Loan;
import com.society.application.model.LoanMaster;
import com.society.application.model.LoanPlanMaster;
import com.society.application.model.LockerMaster;
import com.society.application.model.Member;
import com.society.application.model.PurityMaster;
import com.society.application.model.RateMaster;
import com.society.application.repository.ItemMasterRepo;
import com.society.application.repository.LoanMasterRepo;
import com.society.application.repository.LoanRepo;
import com.society.application.repository.LockerMasterRepo;
import com.society.application.repository.MemberRepo;
import com.society.application.repository.PurityMasterRepo;
import com.society.application.repository.RateMasterRepo;

@Controller
public class GoldLoanController {

	@Autowired
	LoanMasterRepo loanMasterRepo;

	@Autowired
	RateMasterRepo rateMasterRepo;

	@Autowired
	ItemMasterRepo itemMasterRepo;

	@Autowired
	LockerMasterRepo lockerMasterRepo;

	@Autowired
	PurityMasterRepo purityMasterRepo;

	@Autowired
	LoanRepo loanRepo;

	@Autowired
	MemberRepo membRepo;

	@GetMapping("/LoanPlan9d5e")
	public String getAllLoanId(Model model) {
		return "Gold_Loan/LoanPlan9d5e";
	}

	@PostMapping("/saveLoanMaster")
	public String loanMaster(@ModelAttribute("saveGoldLoanMaster") LoanMaster loanMaster, Model model) {
		if (loanMaster.getType() != null && loanMaster.getType().equals("Gold")) {
			loanMaster.setType(loanMaster.getType());
		}
		loanMaster.setCreatedBy("");
		loanMaster.setCreatedDate(new Date().toString());
		loanMaster.setUpdatedBy("");
		loanMaster.setUpdatedDate(new Date().toString());
		LoanMaster savedLoanMaster = loanMasterRepo.save(loanMaster);
		if (savedLoanMaster != null) {
			model.addAttribute("status", "success");
		}
		model.addAttribute("status", "Fail");
		return "Gold_Loan/LoanPlan9d5e";
	}

	@PostMapping("Loan_Plan")
	public String LoanMaster(@ModelAttribute("loanPlan") LoanMaster loanMaster, Model model) {
		if (loanMaster.getType() != null && loanMaster.getType().equals("Loan")) {
			loanMaster.setType(loanMaster.getType());
		}
		LoanMaster loanPlanMasterSavedData = loanMasterRepo.save(loanMaster);
		if (loanPlanMasterSavedData != null) {
			model.addAttribute("status", "success");
		} else {
			model.addAttribute("status", "error");
		}
		return "Loan_Section/LoanPlan";
	}

	@GetMapping("/getAllLoan")
	@ResponseBody
	public List<LoanMaster> getAllLoan() {
		List<LoanMaster> allLoan = loanMasterRepo.findAll();
		return allLoan;
	}

	@GetMapping("/getAllGoldLoan")
	@ResponseBody
	public List<LoanMaster> getAllGoldLoan(Model model) {
		List<LoanMaster> allGoldLoan = loanMasterRepo.findAll();
		List<LoanMaster> filterGoldLoan = allGoldLoan.stream().filter(p -> p.getType().equals("Gold"))
				.collect(Collectors.toList());
		return filterGoldLoan;
	}

	@GetMapping("/getAllLoanMasterData")
	@ResponseBody
	public List<LoanMaster> getAllLoanMasterData() {
		List<LoanMaster> allGoldLoan = loanMasterRepo.findAll();
		List<LoanMaster> filterGoldLoan = allGoldLoan.stream().filter(p -> p.getType().equals("Loan"))
				.collect(Collectors.toList());
		return filterGoldLoan;
	}

	@GetMapping("/goldLoanMaster")
	public String goldLoanMaster(Model model) {
		return "Gold_Loan/GoldLoanMaster";
	}

	@GetMapping("/getAllRates")
	@ResponseBody
	public List<RateMaster> getAllRates() {
		List<RateMaster> getAllRates = rateMasterRepo.findAll();
		return getAllRates;
	}

	@PostMapping("/saveRates")
	public String saveRates(@ModelAttribute("saveRateMaster") RateMaster rateMaster, Model model) {
		RateMaster getAllRates = rateMasterRepo.save(rateMaster);
		return "Gold_Loan/GoldLoanMaster";
	}

	@PostMapping("/saveItemMaster")
	public String saveItemMaster(@ModelAttribute("saveItemMaster") ItemMaster itemMaster, Model model) {
		ItemMaster getAllRates = itemMasterRepo.save(itemMaster);
		return "Gold_Loan/GoldLoanMaster";
	}

	@GetMapping("/getAllItemMaster")
	@ResponseBody
	public List<ItemMaster> getAllitemMaster() {
		List<ItemMaster> getAllRates = itemMasterRepo.findAll();
		return getAllRates;
	}

	// lockerMasterRepo

	@PostMapping("/saveLockerMaster")
	public String saveLockerMaster(@ModelAttribute("savelockerMaster") LockerMaster lockerMaster, Model model) {
		LockerMaster getAllRates = lockerMasterRepo.save(lockerMaster);
		return "Gold_Loan/GoldLoanMaster";
	}

	@GetMapping("/getAllLockerMaster")
	@ResponseBody
	public List<LockerMaster> getAllLockerMaster() {
		List<LockerMaster> getAllRates = lockerMasterRepo.findAll();
		return getAllRates;
	}

	// PurityMasterRepo

	@PostMapping("/savePurityMasterRepo")
	public String savePurityMasterRepo(@ModelAttribute("savePurityMaster") PurityMaster purityMaster, Model model) {
		PurityMaster getAllRates = purityMasterRepo.save(purityMaster);
		return "Gold_Loan/GoldLoanMaster";
	}

	@GetMapping("/getAllPurityMaster")
	@ResponseBody
	public List<PurityMaster> getAllPurityMaste() {
		List<PurityMaster> getAllRates = purityMasterRepo.findAll();
		return getAllRates;
	}

	// GoldLoanApplication7475
	@GetMapping("/goldLoanApplication7475")
	public String goldLoanApplication7475(Model model) {
		return "Gold_Loan/GoldLoanApplication7475";
	}

	@PostMapping("/saveLoanGoldApplication")
	public String saveLoanGoldApplication(@ModelAttribute("loanGoldApplication") Loan loan, Model model) {
		loan.setType("Gold");
		loan.setCreatedBy("");
		loan.setCreatedDate(new Date().toString());
		loan.setUpdatedBy("");
		loan.setUpdatedDate(new Date().toString());
		Loan loanSaved = loanRepo.save(loan);
		if (loanSaved != null) {
			model.addAttribute("status", "success");
			return "Gold_Loan/GoldLoanApplication7475";
		} else {
			model.addAttribute("status", "Fail");
			return "Gold_Loan/GoldLoanApplication7475";
		}
	}

	@PostMapping("updateLoan")
	public String updateLoan(@ModelAttribute("updateLoan") Loan loan, Model model) {
		loan.setType("Loan");
		loan.setCreatedBy("");
		loan.setCreatedDate(new Date().toString());
		loan.setUpdatedBy("");
		loan.setUpdatedDate(new Date().toString());
		Loan loanSaved = loanRepo.save(loan);
		if (loanSaved != null) {
			List<Loan> loanPlanMasterAllData = loanRepo.findAll();
			model.addAttribute("loanPlanMaster", loanPlanMasterAllData);
			model.addAttribute("status", "success");
			return "Loan_Section/LoanApplication";
		} else {
			model.addAttribute("status", "Fail");
			return "Loan_Section/LoanApplication";
		}
	}

	@GetMapping("/getAllLoans")
	@ResponseBody
	public List<Loan> getAllLoans() {
		List<Loan> getAllRates = loanRepo.findAll();
		return getAllRates;
	}

	// GoldLoanApplication9c5a
	@GetMapping("/goldLoanApplication9c5a")
	public String goldLoanApplication9c5a(Model model) {
		return "Gold_Loan/GoldLoanApplication9c5a";
	}

	@GetMapping("/goldLoanApplicationf780")
	public String goldLoanApplicationf780(Model model) {
		return "Gold_Loan/GoldLoanApplicationf780";
	}

	@GetMapping("/loanRepayment9d5e")
	public String loanRepayment9d5e(Model model) {
		return "Gold_Loan/LoanRepayment9d5e";
	}

	// IrregularEMIPaymentEntry9d5e

	@GetMapping("/irregularEMIPaymentEntry9d5e")
	public String irregularEMIPaymentEntry9d5e(Model model) {
		return "Gold_Loan/IrregularEMIPaymentEntry9d5e";
	}

	// RegularLoanStatement9d5e

	@GetMapping("/regularLoanStatement9d5e")
	public String regularLoanStatement9d5e(Model model) {
		return "Gold_Loan/RegularLoanStatement9d5e";
	}

	// IrregularLoanStatement9d5e
	@GetMapping("/irregularLoanStatement9d5e")
	public String irregularLoanStatement9d5e(Model model) {
		return "Gold_Loan/IrregularLoanStatement9d5e";
	}

	// GoldLoanDocumentPrint
	@GetMapping("/goldLoanDocumentPrint")
	public String goldLoanDocumentPrint(Model model) {
		return "Gold_Loan/GoldLoanDocumentPrint";
	}

	// LoanPreSettlement9d5e.html
	@GetMapping("/loanPreSettlement9d5e")
	public String loanPreSettlement9d5e(Model model) {
		return "Gold_Loan/LoanPreSettlement9d5e";
	}

	// ClosedLoanReport9d5e.html
	@GetMapping("/closedLoanReport9d5e")
	public String closedLoanReport9d5e(Model model) {
		return "Gold_Loan/ClosedLoanReport9d5e";
	}

	// LoanNoc9d5e
	@GetMapping("/loanNoc9d5e")
	public String loanNoc9d5e(Model model) {
		return "Gold_Loan/LoanNoc9d5e";
	}

	// GoldLoanSearch.jsp
	@GetMapping("/goldLoanSearch")
	public String goldLoanSearch(Model model) {
		return "Gold_Loan/GoldLoanSearch";
	}

	@PostMapping("/getMemberDeailsById")
	@ResponseBody
	public Member getMemberDeailsById(@RequestBody GenericGetById id) {
		Optional<Member> memberData = membRepo.findById(Integer.parseInt(id.getId()));
		return memberData.get();
	}

	@PostMapping("/getLoanMasterDeailsById")
	@ResponseBody
	public LoanMaster getLoanMasterDeailsById(@RequestBody GenericGetById id) {
		Optional<LoanMaster> loanMaster = loanMasterRepo.findById(Integer.parseInt(id.getId()));
		return loanMaster.get();
	}

	@PostMapping("/displayLoanDetailsSelectedId")
	@ResponseBody
	public Loan displayLoanDetailsSelectedId(@RequestBody GenericGetById id) {
		Optional<Loan> loan = loanRepo.findById(Integer.parseInt(id.getId()));
		System.err.println(loan.get());
		return loan.get();
	}

	@PostMapping("/updateLoanRegularEMIRepayment")
	public String regularEMIRepayment(@ModelAttribute("updateLoan") Loan loan, Model model) {
		Optional<Loan> getLoan = loanRepo.findById(loan.getId());
		if (getLoan.get() != null) {

		}
		model.addAttribute("status", "success");
		return "Gold_Loan/LoanRepayment9d5e";
	}

	@PostMapping("/closeLoanRegularEMIRepayment")
	public String closeLoanRegularEMIRepayment(@ModelAttribute("updateLoan") Loan loan, Model model) {
		Optional<Loan> getLoan = loanRepo.findById(loan.getId());
		if (getLoan.get() != null) {

		}
		model.addAttribute("status", "success");
		return "Gold_Loan/LoanPreSettlement9d5e";
	}

	private Loan updateWrapper(Loan loanFromUser, Loan dbLoan) {

		return dbLoan;
	}
}
