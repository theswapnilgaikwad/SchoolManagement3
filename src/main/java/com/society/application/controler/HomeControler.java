package com.society.application.controler;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.AddInvestment;
import com.society.application.model.Advisor;
import com.society.application.model.AdvisorCollectorDetails;
import com.society.application.model.BranchMaster;
import com.society.application.model.CollectorPromotionDto;
import com.society.application.model.DailyDeposite;
import com.society.application.model.DepartmentMaster;
import com.society.application.model.DesignationMaster;
import com.society.application.model.Employee;
import com.society.application.model.FixedDeposit;
import com.society.application.model.GenericGetById;
import com.society.application.model.GoldLoanPlanMaster;
import com.society.application.model.KYCMaster;
import com.society.application.model.LoanPlanMaster;
import com.society.application.model.Login;
import com.society.application.model.MISDeposit;
import com.society.application.model.MartialStatus;
import com.society.application.model.Member;
import com.society.application.model.PaymentMaster;
import com.society.application.model.Position;
import com.society.application.model.RecurringDeposit;
import com.society.application.model.RelativeRelationMaster;
import com.society.application.model.ReportData;
import com.society.application.model.ReportDataAdvisor;
import com.society.application.model.ShareAllocationMaster;
import com.society.application.model.ShareTransferDto;
import com.society.application.model.StateMaster;
import com.society.application.model.TodaysRateMaster;
import com.society.application.model.UserMaster;
import com.society.application.model.UserToServiceMap;
import com.society.application.repository.AddInvestmentRepo;
import com.society.application.repository.AdvisorCollectorDetailsRepo;
import com.society.application.repository.AdvisorRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.DailyDepositeRepo;
import com.society.application.repository.DepartmentMasterRepo;
import com.society.application.repository.DesignationMasterRepo;
import com.society.application.repository.EmployeeRepo;
import com.society.application.repository.FixedDepositRepo;
import com.society.application.repository.GoldLoanPlanRepo;
import com.society.application.repository.KYCMasterRepo;
import com.society.application.repository.LoanPlanRepo;
import com.society.application.repository.LoginRepo;
import com.society.application.repository.MISDepositRepo;
import com.society.application.repository.MartialStatusRepo;
import com.society.application.repository.MemberRepo;
import com.society.application.repository.PaymentMasterRepo;
import com.society.application.repository.PositionRepo;
import com.society.application.repository.RecurringDepositRepo;
import com.society.application.repository.RelativeRelationMasterRepo;
import com.society.application.repository.ShareAllocationMasterRepo;
import com.society.application.repository.StateMasterRepo;
import com.society.application.repository.TodaysRateMasterRepo;
import com.society.application.repository.UserMasterRepo;
import com.society.application.repository.UserToServiceMapRepo;

import ch.qos.logback.core.rolling.helper.IntegerTokenConverter;

@Controller
public class HomeControler {

	@Autowired
	MemberRepo memberRepo;
	
	@Autowired
	LoanPlanRepo loanPlanMasterRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	StateMasterRepo stateMasterRepo;
	
	@Autowired
	UserToServiceMapRepo userToServiceMapRepo;

	@Autowired
	MartialStatusRepo martialStatusRepo;

	@Autowired
	RelativeRelationMasterRepo relativeRelationMasterRepo;

	@Autowired
	ShareAllocationMasterRepo shareAllocationMasterRepo;

	@Autowired
	PaymentMasterRepo paymentMasterRepo;

	@Autowired
	KYCMasterRepo kycMasterRepo;

	@Autowired
	AdvisorCollectorDetailsRepo advisorCollectorDetailsRepo;

	@Autowired
	AddInvestmentRepo addInvestmentRepo;

	@Autowired
	PositionRepo positionRepo;

	@Autowired
	AdvisorRepo advisorRepo;

	@Autowired
	EmployeeRepo employeeRepo;

	@Autowired
	DesignationMasterRepo designationMasterRepo;

	@Autowired
	DepartmentMasterRepo departmentMasterRepo;

	@Autowired
	LoginRepo loginRepo;
	
	@Autowired
	UserMasterRepo userMasterRepo;

	@Autowired
	DailyDepositeRepo dailyDepositeRepo;

	@Autowired
	RecurringDepositRepo recurringDepositRepo;

	@Autowired
	FixedDepositRepo fixedDepositRepo;

	@Autowired
	MISDepositRepo mISDepositRepo;

	@Autowired
	GoldLoanPlanRepo goldLoanPlanRepo;

	@Autowired
	TodaysRateMasterRepo todaysRateMasterRepo;

	
	
	@GetMapping("/addAdvisor")
	public String addAdvisor(Model model) {
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "collector/AddAdvisor";
	}

	/*
	 * @PostMapping("/addAdvisor") public String
	 * addAdvisor(@ModelAttribute("advisor") Advisor advisor,Model model) {
	 * advisorRepo.save(advisor); return "collector/AddAdvisor"; }
	 */

	/*
	 * @GetMapping("/addEmployee") public String addEmployee() { return
	 * "employee/AddEmployee"; }
	 */

	//COLLECTOR/ADVISOR TREE
//
//	@GetMapping("/advisorTree")
//	public String advisorTree() {
//		return "advisor/advisorTree";
//	}
//	
	
	
	
	
	
	
	@GetMapping("/EmployeeIDCardPrinting")
	public String EmployeeIDCardPrinting() {
		return "employee/EmployeeIDCardPrinting";
	}


	

	@GetMapping("/LoanCalculator")
	public String LoanCalculator() {
		return "Loan_Section/LoanCalculator";

	}

	@GetMapping("/addMember")
	public String addMember() {
		return "member/AddMember";
	}

	@GetMapping("/")
	public String login(Model model) {
		model.addAttribute("msg", "");
		return "index";
	}

	/*
	 * @GetMapping("/addAdvisor") public String addAdvisor() { return
	 * "advisor/addAdvisor"; }
	 */

	@GetMapping("/advisorDownLine")
	public String advisorDownLine() {
		return "advisor/advisorDownLine";
	}

	@GetMapping("/collectorPromotion")
	public String collectorPromotion() {
		return "advisor/collectorPromotion";
	}

	@GetMapping("/idCardPrinting")
	public String idCardPrinting() {
		return "advisor/idCardPrinting";
	}

	@GetMapping("/advisorSearch")
	public String advisorSearch() {
		return "advisor/advisorSearch";
	}



	/*
	 * @GetMapping("/planMaster") public String planMaster() { return
	 * "investmentSection/PlanMaster"; }
	 * 
	 * @GetMapping("/addInvestment") public String addInvestment() { return
	 * "investmentSection/AddInvestment"; }
	 * 
	 * @GetMapping("/rDRenewal") public String rDRenewal() { return
	 * "investmentSection/RDRenewal"; }
	 * 
	 * @GetMapping("/dailyRenewalPayment") public String dailyRenewalPayment() {
	 * return "investmentSection/DailyRenewalPayment"; }
	 * 
	 * @GetMapping("/flexirenewal9828") public String flexirenewal9828() { return
	 * "investmentSection/Flexirenewal9828"; }
	 * 
	 * @GetMapping("/renewalPassbook") public String renewalPassbook() { return
	 * "investmentSection/RenewalPassbook"; }
	 * 
	 * @GetMapping("/policyRenewalReceiptf0be") public String
	 * policyRenewalReceiptf0be() { return
	 * "investmentSection/PolicyRenewalReceiptf0be"; }
	 * 
	 * @GetMapping("/policyRenewalReceiptb376") public String
	 * PolicyRenewalReceiptb376() { return
	 * "investmentSection/PolicyRenewalReceiptb376"; }
	 * 
	 * @GetMapping("/certificateIssue") public String CertificateIssue() { return
	 * "investmentSection/CertificateIssue"; }
	 * 
	 * @GetMapping("/certificateIssue46b3") public String CertificateIssue46b3() {
	 * return "investmentSection/CertificateIssue46b3"; }
	 * 
	 * @GetMapping("/investmentInterestDetails") public String
	 * InvestmentInterestDetails() { return
	 * "investmentSection/InvestmentInterestDetails"; }
	 * 
	 * @GetMapping("/investmentInterestPayable") public String
	 * InvestmentInterestPayable() { return
	 * "investmentSection/InvestmentInterestPayable"; }
	 * 
	 * @GetMapping("/investmentSearch") public String InvestmentSearch() { return
	 * "investmentSection/InvestmentSearch"; }
	 * 
	 * @GetMapping("/accountCloser") public String AccountCloser() { return
	 * "savingsAccount/AccountCloser"; }
	 * 
	 * @GetMapping("/addSaving") public String AddSaving() { return
	 * "savingsAccount/AddSaving"; }
	 * 
	 * @GetMapping("/savingIntraTransfer") public String SavingIntraTransfer() {
	 * return "savingsAccount/SavingIntraTransfer"; } //
	 * 
	 * @GetMapping("/savingsPlanMaster") public String SavingsPlanMaster() { return
	 * "savingsAccount/SavingsPlanMaster"; }
	 * 
	 * @GetMapping("/savingsStatement") public String savingsStatement() { return
	 * "savingsAccount/SavingsStatement"; }
	 * 
	 * @GetMapping("/savingsTransactionEntry") public String
	 * SavingsTransactionEntry() { return "savingsAccount/SavingsTransactionEntry";
	 * }
	 * 
	 * @GetMapping("/sBInterestGenerate") public String SBInterestGenerate() {
	 * return "savingsAccount/SBInterestGenerate"; }
	 * 
	 * @GetMapping("/sBPassbookPrint") public String SBPassbookPrint() { return
	 * "savingsAccount/SBPassbookPrint"; }
	 * 
	 * @GetMapping("/searchSavingsAccount") public String SearchSavingsAccount() {
	 * return "savingsAccount/SearchSavingsAccount"; }
	 * 
	 * @GetMapping("/serviceChargesDeduction") public String
	 * ServiceChargesDeduction() { return "savingsAccount/ServiceChargesDeduction";
	 * }
	 * 
	 * @GetMapping("/sMSChargesDeduction") public String SMSChargesDeduction() {
	 * return "savingsAccount/SMSChargesDeduction"; }
	 */
	//

	@GetMapping("/logout")
	public String logout() {
		return "index";
	}
	
	

	@PostMapping("/submitDailyDeposite")
	public String submitDailyDeposite(@ModelAttribute("dd") DailyDeposite dailyDeposite, Model model) {
		System.err.println(dailyDeposite);
		dailyDepositeRepo.save(dailyDeposite);
		return "investmentSection/PlanMaster";
	}

	@PostMapping("/submitRecurringDeposit")
	public String submitRecurringDeposit(@ModelAttribute("rd") RecurringDeposit recurringDeposit, Model model) {
		System.err.println(recurringDeposit);
		recurringDepositRepo.save(recurringDeposit);
		return "investmentSection/PlanMaster";
	}

	@PostMapping("/submitFixedDeposit")
	public String submitFixedDeposit(@ModelAttribute("fd") FixedDeposit fixedDeposit, Model model) {
		System.err.println(fixedDeposit);
		fixedDepositRepo.save(fixedDeposit);
		return "investmentSection/PlanMaster";
	}

	@PostMapping("/submitMISDeposit")
	public String submitMISDeposit(@ModelAttribute("mis") MISDeposit mISDeposit, Model model) {
		mISDepositRepo.save(mISDeposit);
		return "investmentSection/PlanMaster";
	}

	@GetMapping("/getAlldd")
	@ResponseBody
	public List<DailyDeposite> getAlldd() {
		return dailyDepositeRepo.findAll();
	}

	@GetMapping("/getAllrd")
	@ResponseBody
	public List<RecurringDeposit> getAllrd() {
		return recurringDepositRepo.findAll();
	}

	@GetMapping("/getAllfd")
	@ResponseBody
	public List<FixedDeposit> getAllfd() {
		return fixedDepositRepo.findAll();
	}

	@GetMapping("/getAllmis")
	@ResponseBody
	public List<MISDeposit> getAllmis() {
		return mISDepositRepo.findAll();
	}

	@GetMapping("/getAllMember")
	@ResponseBody
	public List<Member> getAllMember() {
		List<Member> listMember = memberRepo.findAll();
		for (Member member : listMember) {
			if (member.getBranchName() != null) {
				Optional<BranchMaster> branchMaster = branchMasterRepo
						.findById(Integer.parseInt(member.getBranchName()));
				member.setBranchName(branchMaster.get().getName());
			}
		}
		return memberRepo.findAll();
	}


	
	@PostMapping("/loginValidate")
	public String loginValidate(@ModelAttribute("user") UserMaster login, Model model,HttpSession session) {
		if (login.getUserId() != null && login.getPassword() != null) {
			List<UserMaster> loginAll = userMasterRepo.findAll();
			List<UserMaster> loginData = loginAll.stream().filter(p -> p.getUserId().equals(login.getUserId())
					&& p.getPassword().equals(login.getPassword())).collect(Collectors.toList());
			if (!loginData.isEmpty()) {
				List<UserToServiceMap> userMap =  userToServiceMapRepo.getDataByuserId(login.getUserId());
			//	String[] str = userMap.getService().split(",");
				//System.err.println(Arrays.asList(str));
				List<String> myList = new ArrayList<String>(); 

				for(UserToServiceMap usr : userMap) {
					//myList =new ArrayList<String>(Arrays.asList(usrMap.getService().split(",")));
					String[] str = usr.getService().split(",");
					if(str!=null) {
					for(int i = 0;i<str.length;i++) {
						myList.add(str[i]);

					}
					}
				}
				//System.err.println("myList = "+myList);

			    session.setAttribute("user", myList);
				return "member/AddMember";
			} else {
				model.addAttribute("msg", "Invalid username or password");
				return "index";
			}
		}
		return "index";
	}

	@PostMapping("/getAdvisor")
	@ResponseBody
	public AdvisorCollectorDetails getAdvisor(@RequestBody GenericGetById id) {
		Optional<AdvisorCollectorDetails> listAdvisorCollectorDetails = advisorCollectorDetailsRepo
				.findById(Integer.parseInt(id.getId()));
		Optional<Position> position = positionRepo
				.findById(Integer.parseInt(listAdvisorCollectorDetails.get().getSelectPosition()));
		listAdvisorCollectorDetails.get().setSelectPosition(position.get().getName());
		Optional<BranchMaster> branchMaster = branchMasterRepo
				.findById(Integer.parseInt(listAdvisorCollectorDetails.get().getBranchName()));
		listAdvisorCollectorDetails.get().setBranchName(branchMaster.get().getName());
		return listAdvisorCollectorDetails.get();
	}

	@GetMapping("/getAllBranch")
	@ResponseBody
	public List<BranchMaster> getAllBranch() {
		return branchMasterRepo.findAll();
	}

	@GetMapping("/getAllPosition")
	@ResponseBody
	public List<Position> getAllPosition() {
		return positionRepo.findAll();
	}

	@GetMapping("/getAllState")
	@ResponseBody
	public List<StateMaster> getAllState() {
		return stateMasterRepo.findAll();
	}

	@GetMapping("/getAllMartial")
	@ResponseBody
	public List<MartialStatus> getAllMartial() {
		return martialStatusRepo.findAll();
	}

	@GetMapping("/getAllRelativeRelationl")
	@ResponseBody
	public List<RelativeRelationMaster> getAllRelativeRelationl() {
		return relativeRelationMasterRepo.findAll();
	}

	@GetMapping("/getAllShareAllocation")
	@ResponseBody
	public List<ShareAllocationMaster> getAllShareAllocation() {
		return shareAllocationMasterRepo.findAll();
	}

	@GetMapping("/getAllPaymentMaster")
	@ResponseBody
	public List<PaymentMaster> getAllPaymentMaster() {
		return paymentMasterRepo.findAll();
	}

	@GetMapping("/getAllKYC")
	@ResponseBody
	public List<KYCMaster> getAllKYC() {
		return kycMasterRepo.findAll();
	}

	@GetMapping("/getAllAdvisor")
	@ResponseBody
	public List<AdvisorCollectorDetails> getAllAdvisor() {
		return advisorCollectorDetailsRepo.findAll();
	}

	@GetMapping("/addMemberKyc")
	public String addMemberKyc(Model model) {
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "member/AddMemberKYC";
	}

	@GetMapping("/memberAllDetails")
	public String memberAllDetails(Model model) {
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "member/MemberAllDetails";
	}

	@GetMapping("/memberDetailRpt")
	public String memberDetailRpt(Model model) {
		List<Member> allMember = memberRepo.findAll();
		for (Member member : allMember) {
			Optional<BranchMaster> branchMaster = branchMasterRepo.findById(Integer.parseInt(member.getBranchName()));
			member.setBranchName(branchMaster.get().getName());
			;
		}
		model.addAttribute("allMember", allMember);
		return "member/MemberDetailRpt";
	}

	@GetMapping("/searchMember")
	public String searchMember(Model model) {
		List<Member> allMember = memberRepo.findAll();
		for (Member member : allMember) {
			Optional<BranchMaster> branchMaster = branchMasterRepo.findById(Integer.parseInt(member.getBranchName()));
			member.setBranchName(branchMaster.get().getName());
			;
		}
		model.addAttribute("allMember", allMember);
		return "member/SearchMember";
	}

	@GetMapping("/shareIssue")
	public String shareIssue(Model model) {
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "memberShare/shareTransfer";
	}

	@GetMapping("/memberShareReport")
	public String memberShareReport(Model model) {
		List<Member> allMember = memberRepo.findAll();
		model.addAttribute("allMember", allMember);
		return "memberShare/memberShareReport";
	}

	@GetMapping("/DNOGenerate")
	public String DNOGenerate() {
		return "memberShare/DNOGenerate";
	}

	@GetMapping("/unallotedShareReport")
	public String unallotedShareReport(Model model) {
		return "memberShare/unallotedShareReport";
	}

	@GetMapping("/shareCertificate")
	public String shareCertificate(Model model) {
		return "memberShare/shareCertificate";
	}

	@PostMapping("addMember")
	public String addMember(@ModelAttribute("user") Member member, Model model) {
		String status = "error";
		if (member.getRegistrationDate() != null && member.getMemberName() != null && !member.getMemberName().equals("")
				&& !member.getPinCode().equals("") && !member.getAadharNo().equals("")
				&& !member.getPhoneno().equals("") && !member.getOccupation().equals("")
				&& !member.getEducation().equals("")) {
			member.setStatus("Active");
			Member savedmember = memberRepo.save(member);
			if (savedmember != null) {
				status = "saved";
			}
			model.addAttribute("status", status);
		}
		return "member/AddMember";
	}

	@PostMapping("getMember")
	@ResponseBody
	public Member getAllMember(@RequestBody GenericGetById id) {
		Optional<Member> member = memberRepo.findById(Integer.parseInt(id.getId()));
		Optional<BranchMaster> branchMaster = branchMasterRepo.findById(Integer.parseInt(member.get().getBranchName()));
		member.get().setBranchName(branchMaster.get().getName());
		Optional<StateMaster> stateData = stateMasterRepo.findById(Integer.parseInt(member.get().getState()));
		member.get().setState(stateData.get().getName());
		return member.get();
	}

	@PostMapping("getShareCertificate")
	@ResponseBody
	public List<Member> getShareCertificate(@RequestBody GenericGetById id) {
		List<Member> listMember = new ArrayList<Member>();
		Optional<Member> member = memberRepo.findById(Integer.parseInt(id.getId()));
		Optional<BranchMaster> branchMaster = branchMasterRepo.findById(Integer.parseInt(member.get().getBranchName()));
		member.get().setBranchName(branchMaster.get().getName());
		;
		listMember.add(member.get());
		return listMember;
	}

	@PostMapping("getShareMemberData")
	@ResponseBody
	public List<Member> getShareMemberData(@RequestBody ReportData data) {
		List<Member> allMember = memberRepo.findAll();
		if (data.getBranchName() != null && !data.getBranchName().isEmpty()) {
			Optional<Member> member = memberRepo.findById(Integer.parseInt(data.getBranchName()));
			return allMember.stream().filter(p -> p.getId() == member.get().getId()).collect(Collectors.toList());
		}
		return new ArrayList<>();
	}

	@PostMapping("searchAdvisor")
	public String searchAdvisor(@ModelAttribute("user") ReportDataAdvisor data) {
		System.err.println(data);
		List<AdvisorCollectorDetails> allAdvisorCollectorDetails = advisorCollectorDetailsRepo.findAll();
		allAdvisorCollectorDetails.stream().filter(p -> p.getBranchName().equals(data.getBranchName()))
				.collect(Collectors.toList());
		return "advisor/advisorSearch";
	}

	@PostMapping("getMemberReport")
	@ResponseBody
	public List<Member> getMemberReport(@RequestBody ReportData data) {
		System.err.println(data);
		List<Member> allMember = memberRepo.findAll();
		BranchMaster branchMaster = branchMasterRepo.findByname(data.getBranchName());
		allMember = allMember.stream()
				.filter(p -> p.getBranchName().equalsIgnoreCase(String.valueOf(branchMaster.getId()))
						&& dateFormat(p.getRegistrationDate()).after(dateFormatForFrontEnd(data.getfDate()))
						&& dateFormat(p.getRegistrationDate()).before(dateFormatForFrontEnd(data.gettDate())))
				.collect(Collectors.toList());
		for (Member member : allMember) {
			Optional<BranchMaster> branchMaster2 = branchMasterRepo.findById(Integer.parseInt(member.getBranchName()));
			member.setBranchName(branchMaster2.get().getName());
			;
		}
		return allMember;
	}

	@PostMapping("getMemberShareReport")
	@ResponseBody
	public List<Member> getMemberShareReport(@RequestBody ReportData data) {
		List<Member> allMember = memberRepo.findAll();

		if (!data.getBranchName().equals("All")) {
			BranchMaster branchMaster = branchMasterRepo.findByname(data.getBranchName());
			allMember = allMember.stream()
					.filter(p -> p.getBranchName().equalsIgnoreCase(String.valueOf(branchMaster.getId()))
							&& dateFormat(p.getRegistrationDate()).after(dateFormatForFrontEnd(data.getfDate()))
							&& dateFormat(p.getRegistrationDate()).before(dateFormatForFrontEnd(data.gettDate())))
					.collect(Collectors.toList());
			for (Member member : allMember) {
				Optional<BranchMaster> branchMaster2 = branchMasterRepo
						.findById(Integer.parseInt(member.getBranchName()));
				member.setBranchName(branchMaster2.get().getName());
				;
			}
			System.err.println(allMember);
			return allMember;
		}
		return allMember;
	}

	@PostMapping("getSerachMember")
	@ResponseBody
	public List<Member> getSerachMember(@RequestBody ReportData data) {
		List<Member> allMember = memberRepo.findAll();
		BranchMaster branchMaster = branchMasterRepo.findByname(data.getBranchName());
		allMember = allMember.stream()
				.filter(p -> p.getBranchName().equalsIgnoreCase(String.valueOf(branchMaster.getId()))
						|| dateFormat(p.getRegistrationDate()).after(dateFormatForFrontEnd(data.getfDate()))
						|| dateFormat(p.getRegistrationDate()).before(dateFormatForFrontEnd(data.gettDate()))
						|| p.getMemberName().equalsIgnoreCase(data.getMemberName())
						|| p.getPhoneno().equals(data.getMobile()) || p.getAadharNo().equals(data.getAadharno())
						|| p.getPan().equals(data.getPan()))
				.collect(Collectors.toList());

		for (Member member : allMember) {
			Optional<BranchMaster> branchMaster2 = branchMasterRepo.findById(Integer.parseInt(member.getBranchName()));
			member.setBranchName(branchMaster2.get().getName());
			;
		}
		return allMember;

	}

	@PostMapping("updateMember")
	public String updateMember(@ModelAttribute("user") Member member, Model model) {
		Optional<Member> memberObj = memberRepo.findById(member.getId());
		memberObj.get().setVoterNo(member.getVoterNo());
		memberObj.get().setRationNo(member.getRationNo());
		memberObj.get().setdLNo(member.getdLNo());
		memberObj.get().setBankName(member.getBankName());
		memberObj.get().setBankBranch(member.getBankBranch());
		memberObj.get().setAccountNo(member.getAccountNo());
		memberObj.get().setiFSC(member.getiFSC());
		memberRepo.save(memberObj.get());
		model.addAttribute("status", "success");
		return "member/AddMemberKYC";
	}

	@PostMapping("updateColectorPromotion")
	public String updateColectorPromotion(@ModelAttribute("user") CollectorPromotionDto collectorPromotionDto,
			Model model) {
		Optional<AdvisorCollectorDetails> advisorCollector = advisorCollectorDetailsRepo
				.findById(Integer.parseInt(collectorPromotionDto.getCollector()));
		advisorCollector.get().setBranchName(collectorPromotionDto.getBranchName());
		advisorCollector.get().setSelectPosition(collectorPromotionDto.getPosition());
		advisorCollector.get().setNewSenior(collectorPromotionDto.getNewSenior());
		advisorCollectorDetailsRepo.save(advisorCollector.get());
		return "advisor/collectorPromotion";
	}

	@GetMapping("/rDRenewal")
	public String rDRenewal() {
		return "investmentSection/RDRenewal";
	}
	
	
    @GetMapping("/FetcInstallmets")
    @ResponseBody
	public List<AddInvestment> viewInstallments(HttpServletRequest hp)
	{
    	String ids = hp.getParameter("searchbyPolicyNo");
		   int i =Integer.parseInt(ids);		   
		   List<AddInvestment> data1 =  addInvestmentRepo.findByid(i);
			
		return data1;	
		}
	@PostMapping("updateShareTransfer")
	public String updateShareTransfer(@ModelAttribute("user") ShareTransferDto member, Model model) {
		Optional<Member> memberObj = memberRepo.findById(Integer.parseInt(member.getId()));
		memberObj.get().setBankName(member.getBranchName());
		memberObj.get().setTransferDate(member.getTransferDate());
		memberObj.get().setShareAllotedfrm(member.getShareAllotedfrm2());
		memberObj.get().setTransferAmount(member.getTransferAmount());
		memberObj.get().setPaymode(member.getPaymode());
		memberObj.get().setRemarks(member.getRemarks());

		memberRepo.save(memberObj.get());
		model.addAttribute("status", "success");
		return "memberShare/shareTransfer";
	}

	@PostMapping("saveAdvisor")
	public String saveAdvisor(@ModelAttribute("user") AdvisorCollectorDetails advisorCollectorDetails, Model model) {
		advisorCollectorDetailsRepo.save(advisorCollectorDetails);
		model.addAttribute("status", "success");
		return "advisor/addAdvisor";
	}

	@PostMapping("/saveInvestment")
	public String saveInvestment(@ModelAttribute("user") AddInvestment addInvestment, Model model) {
		addInvestmentRepo.save(addInvestment);
		return "investmentSection/AddInvestment";
	}

	@PostMapping("/updateInvestment")
	public String updateInvestment(@ModelAttribute("user") AddInvestment addInvestment, Model model) {
		Optional<AddInvestment> allInvestment = addInvestmentRepo.findById(addInvestment.getId());
		System.err.println(allInvestment);
		if (addInvestment.getPaymode() != null && addInvestment.getAdvisorCode() != null
				&& addInvestment.getRemarks() != null) {
			allInvestment.get().setPaymode(addInvestment.getPaymode());
			allInvestment.get().setAdvisorCode(addInvestment.getAdvisorCode());
			allInvestment.get().setRemarks(addInvestment.getRemarks());
			addInvestmentRepo.save(allInvestment.get());
		}
		return "investmentSection/RDRenewal";
	}

	@PostMapping("/investmentSearch")
	public List<AddInvestment> investmentSearch(@ModelAttribute("user") AddInvestment addInvestment, Model model) {
		List<AddInvestment> allInvestment = addInvestmentRepo.findAll();
		allInvestment = allInvestment.stream().filter(p -> p.getCSPName().equals(addInvestment.getCSPName()))
				.collect(Collectors.toList());
		return allInvestment;
	}

	@PostMapping("/flexisave")
	public String flexisave(@ModelAttribute("user") AddInvestment addInvestment, Model model) {
		Optional<AddInvestment> allInvestment = addInvestmentRepo.findById(addInvestment.getId());
		allInvestment.get().setPaymode(addInvestment.getPaymode());
		allInvestment.get().setAdvisorCode(addInvestment.getAdvisorCode());
		allInvestment.get().setRemarks(addInvestment.getRemarks());

		addInvestmentRepo.save(allInvestment.get());
		return "investmentSection/Flexirenewal9828";
	}

	@GetMapping("/getAllPolicyNumber")
	@ResponseBody
	public List<AddInvestment> getAllPolicyNumber() {
		List<AddInvestment> allInvestment = addInvestmentRepo.findAll();
		return allInvestment;
	}

	@PostMapping("/getByAddInvesmentCode")
	@ResponseBody
	public AddInvestment getByAddInvesmentCode(@RequestBody GenericGetById id) {
		Optional<AddInvestment> allInvestment = addInvestmentRepo.findById(Integer.parseInt(id.getId()));
		return allInvestment.get();
	}

	@GetMapping("/addEmployee")
	public String addEmployee() {
		return "employee/AddEmployee";
	}

	@PostMapping("/addEmployee")
	public String addEmployee(@ModelAttribute("emp") Employee employee, Model model) {
		employeeRepo.save(employee);
		return "employee/AddEmployee";
	}

	@GetMapping("/DesignationMaster")
	public String DesignationMaster() {
		return "employee/DesignationMaster";
	}

	@PostMapping("DesignationMaster")
	public String DesignationMaster(@ModelAttribute("designation") DesignationMaster designationMaster, Model model) {
		designationMasterRepo.save(designationMaster);
		return "employee/DesignationMaster";
	}

	@GetMapping("/DepartmentMaster")
	public String DepartmentMaster() {
		return "employee/DepartmentMaster";
	}

	@PostMapping("DepartmentMaster")
	public String DepartmentMaster(@ModelAttribute("designation") DepartmentMaster departmentMaster, Model model) {
		departmentMasterRepo.save(departmentMaster);
		return "employee/DepartmentMaster";
	}

	/*
	 * @GetMapping("/EmployeeIDCardPrinting") public String EmployeeIDCardPrinting()
	 * { return "employee/EmployeeIDCardPrinting"; }
	 */

	@GetMapping("/SearchEmployee")
	public String SearchEmployee() {
		return "employee/SearchEmployee";
	}

	private Date dateFormat(String dateToFormat) {
		DateFormat sourceFormat = new SimpleDateFormat("dd/MM/yyyy");
		String dateAsString = dateToFormat;
		Date date = null;
		try {
			date = sourceFormat.parse(dateAsString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	private Date dateFormatForFrontEnd(String dateToFormat) {
		DateFormat sourceFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateAsString = dateToFormat;
		Date date = null;
		try {
			date = sourceFormat.parse(dateAsString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	@GetMapping("/loanApplication9c5a")
	public String loanApplication9c5a() {
		return "Loan_Section/LoanApplication9c5a";
	}

	@GetMapping("/loanApplicationf780")
	public String loanApplicationf780() {
		return "Loan_Section/LoanApplicationf780";
	}

	@GetMapping("/loanRepaymentf159")
	public String loanRepaymentf159() {
		return "Loan_Section/LoanRepaymentf159";
	}

	@GetMapping("/irregularEMIPaymentEntryf159")
	public String irregularEMIPaymentEntryf159() {
		return "Loan_Section/IrregularEMIPaymentEntryf159";
	}

	@GetMapping("/regularLoanStatementf159")
	public String regularLoanStatementf159() {
		return "Loan_Section/RegularLoanStatementf159";
	}

	@GetMapping("/irregularLoanStatementf159")
	public String irregularLoanStatementf159() {
		return "Loan_Section/IrregularLoanStatementf159";
	}

	@GetMapping("/regularLoanDocumentPrint")
	public String regularLoanDocumentPrint() {
		return "Loan_Section/RegularLoanDocumentPrint";
	}

	@GetMapping("/loanPreSettlementf159")
	public String loanPreSettlementf159() {
		return "Loan_Section/LoanPreSettlementf159";
	}

	@GetMapping("/closedLoanReportf159")
	public String closedLoanReportf159() {
		return "Loan_Section/ClosedLoanReportf159";
	}

	@GetMapping("/loanNocf159")
	public String loanNocf159() {
		return "Loan_Section/LoanNocf159";
	}

	@GetMapping("/loanSearch")
	public String loanSearch() {
		return "Loan_Section/LoanSearch";
	}

	@GetMapping("/goldLoanPlan")
	public String goldLoanPlan() {
		return "Gold_Loan/Gold_LoanPlan";
	}

	
	
	@PostMapping("todaysRateMaster")
	public String todaysRateMaster(@ModelAttribute("todaysRateMaster") TodaysRateMaster todaysRateMaster, Model model) {
		todaysRateMasterRepo.save(todaysRateMaster);

		return "Gold_Loan/goldLoanMaster";
	}

	

	@PostMapping("goldLoanPlan")
	public String goldLoanPlan(@ModelAttribute("goldLoanPlan") GoldLoanPlanMaster goldLoanPlanMaster, Model model) {
		goldLoanPlanRepo.save(goldLoanPlanMaster);

		return "Gold_Loan/Gold_LoanPlan";
	}

	// Prasad--S
	@GetMapping("/LoanApplication")
	public String LoanApplication(Model model) {
		List<LoanPlanMaster> loanPlanMaster = loanPlanMasterRepo.findAll();
		model.addAttribute("loanPlanMaster", loanPlanMaster);
		return "Loan_Section/LoanApplication";
	}

	@PostMapping("getLoanDetails")
	@ResponseBody
	public LoanPlanMaster getLoanDetails(@RequestBody GenericGetById id) {
		Optional<LoanPlanMaster> loanPlanMaster = loanPlanMasterRepo.findById(Integer.parseInt(id.getId()));
		return loanPlanMaster.get();
	}

	// Prasad--E

	@RequestMapping(value = "/id", method = RequestMethod.GET)
	public LoanPlanMaster getLoanAsPerId() {

		return null;
	}

	// aditya saving module start

	@GetMapping("/addSaving")
	public String AddSaving() {
		return "savingsAccount/AddSaving";
	}

	@GetMapping("/savingIntraTransfer")
	public String SavingIntraTransfer() {
		return "savingsAccount/SavingIntraTransfer";
	}

	//
	@GetMapping("/savingsPlanMaster")
	public String SavingsPlanMaster() {
		return "savingsAccount/SavingsPlanMaster";
	}

	@GetMapping("/savingsStatement")
	public String savingsStatement() {
		return "savingsAccount/SavingsStatement";
	}

	@GetMapping("/savingsTransactionEntry")
	public String SavingsTransactionEntry() {
		return "savingsAccount/SavingsTransactionEntry";
	}

	@GetMapping("/sBInterestGenerate")
	public String SBInterestGenerate() {
		return "savingsAccount/SBInterestGenerate";
	}

	@GetMapping("/sBPassbookPrint")
	public String SBPassbookPrint() {
		return "savingsAccount/SBPassbookPrint";
	}

	@GetMapping("/searchSavingsAccount")
	public String SearchSavingsAccount() {
		return "savingsAccount/SearchSavingsAccount";
	}

	@GetMapping("/serviceChargesDeduction")
	public String ServiceChargesDeduction() {
		return "savingsAccount/ServiceChargesDeduction";
	}

	@GetMapping("/sMSChargesDeduction")
	public String SMSChargesDeduction() {
		return "savingsAccount/SMSChargesDeduction";
	}

	@GetMapping("/accountCloser")
	public String AccountCloser() {
		return "savingsAccount/AccountCloser";
	}
	//
	// aditya saving module end

	// aditya's investment module
	@GetMapping("/planMaster")
	public String planMaster() {
		return "investmentSection/PlanMaster";
	}

	@GetMapping("/addInvestment")
	public String addInvestment() {
		return "investmentSection/AddInvestment";
	}

	

	@GetMapping("/dailyRenewalPayment")
	public String dailyRenewalPayment() {
		return "investmentSection/DailyRenewalPayment";
	}

	@GetMapping("/flexirenewal9828")
	public String flexirenewal9828() {
		return "investmentSection/Flexirenewal9828";
	}

	@GetMapping("/renewalPassbook")
	public String renewalPassbook() {
		return "investmentSection/RenewalPassbook";
	}

	@GetMapping("/policyRenewalReceiptf0be")
	public String policyRenewalReceiptf0be() {
		return "investmentSection/PolicyRenewalReceiptf0be";
	}

	@GetMapping("/policyRenewalReceiptb376")
	public String PolicyRenewalReceiptb376() {
		return "investmentSection/PolicyRenewalReceiptb376";
	}

	@GetMapping("/certificateIssue")
	public String CertificateIssue() {
		return "investmentSection/CertificateIssue";
	}

	@GetMapping("/certificateIssue46b3")
	public String CertificateIssue46b3() {
		return "investmentSection/CertificateIssue46b3";
	}

	@GetMapping("/investmentInterestDetails")
	public String InvestmentInterestDetails() {
		return "investmentSection/InvestmentInterestDetails";
	}

	@GetMapping("/investmentInterestPayable")
	public String InvestmentInterestPayable() {
		return "investmentSection/InvestmentInterestPayable";
	}

	@GetMapping("/investmentSearch")
	public String InvestmentSearch() {
		return "investmentSection/InvestmentSearch";
	}

	// end
}
