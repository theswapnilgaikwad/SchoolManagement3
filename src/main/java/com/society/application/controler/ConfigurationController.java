package com.society.application.controler;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.society.application.model.BankMaster;
import com.society.application.model.BranchMaster;
import com.society.application.model.CompanyMaster;
import com.society.application.model.DirectorMaster;
import com.society.application.model.FYMaster;
import com.society.application.model.ModuleList;
import com.society.application.model.Submodule;
import com.society.application.model.UserMaster;
import com.society.application.model.UserToServiceMap;
import com.society.application.repository.BankMasterRepo;
import com.society.application.repository.BranchMasterRepo;
import com.society.application.repository.CompanyMasterRepo;
import com.society.application.repository.DirectorMasterRepo;
import com.society.application.repository.FYMasterRepo;
import com.society.application.repository.ModuleListRepo;
import com.society.application.repository.SubmoduleRepo;
import com.society.application.repository.UserMasterRepo;
import com.society.application.repository.UserToServiceMapRepo;

@Controller
public class ConfigurationController {

	@Autowired
	CompanyMasterRepo companyMasterRepo;

	@Autowired
	FYMasterRepo fYMasterRepo;

	@Autowired
	BranchMasterRepo branchMasterRepo;

	@Autowired
	BankMasterRepo bankMasterRepo;

	@Autowired
	DirectorMasterRepo directorMasterRepo;

	@Autowired
	UserMasterRepo userMasterRepo;
	
	@Autowired
	UserToServiceMapRepo userToServiceMapRepo;
	
	@Autowired
	ModuleListRepo moduleListRepo;
	
	@Autowired
	SubmoduleRepo submoduleRepo;

	@GetMapping("/CompanyDetails")
	public String getAllLoanId(Model model) {
		return "configuration/CompanyDetails";
	}

	@GetMapping("/getConmapnyDetails")
	@ResponseBody
	public CompanyMaster getConmapnyDetails(Model model) {
		String companyName = "EQFI";
		CompanyMaster comMaster = companyMasterRepo.findBycompanyName(companyName);
		if (comMaster != null) {
			return comMaster;
		} else {
			CompanyMaster comMas = new CompanyMaster();
			comMas.setAddress("");
			comMas.setAuthorizedcapital("");
			comMas.setCin("");
			comMas.setCompanyName("");
			comMas.setDoj("");
			comMas.setEmail("");
			comMas.setGst("");
			comMas.setLandLine("");
			comMas.setMobile("");
			comMas.setPaidup("");
			comMas.setPan("");
			comMas.setPinCode("");
			comMas.setShareValue("");
			comMas.setShortName("");
			comMas.setState("");
			comMas.setTan("");
			comMas.setTax("");
			comMas.setTaxSr("");
			comMas.setTDSWithoutPAN("");
			comMas.setTDSWithPAN("");
			return comMas;
		}
	}

	@PostMapping("/updateCompanyDetails")
	public String updateCompanyDetails(@ModelAttribute("updateCompanyDetails") CompanyMaster companyMaster,
			Model model) {
		String companyName = "EQFI";
		CompanyMaster comMaster = companyMasterRepo.findBycompanyName(companyName);
		comMaster.setAddress(companyMaster.getAddress());
		comMaster.setAuthorizedcapital(companyMaster.getAuthorizedcapital());
		comMaster.setCin(companyMaster.getCin());
		comMaster.setCompanyName(companyMaster.getCompanyName());
		comMaster.setDoj(companyMaster.getDoj());
		comMaster.setEmail(companyMaster.getEmail());
		comMaster.setGst(companyMaster.getGst());
		comMaster.setLandLine(companyMaster.getLandLine());
		comMaster.setMobile(companyMaster.getMobile());
		comMaster.setPaidup(companyMaster.getPaidup());
		comMaster.setPan(companyMaster.getPan());
		comMaster.setPinCode(companyMaster.getPinCode());
		comMaster.setShareValue(companyMaster.getShareValue());
		comMaster.setState(companyMaster.getState());
		comMaster.setTan(companyMaster.getTan());
		comMaster.setTax(companyMaster.getTax());
		comMaster.setTaxSr(companyMaster.getTaxSr());
		comMaster.setTDSWithoutPAN(companyMaster.getTDSWithoutPAN());
		comMaster.setTDSWithPAN(companyMaster.getTDSWithPAN());
		comMaster.setId(comMaster.getId());
		comMaster.setCompanyName(companyName);
		companyMasterRepo.save(comMaster);
		return "configuration/CompanyDetails";
	}

	@GetMapping("/FYMater")
	public String FYMater(Model model) {
		return "configuration/AddFinancialMaster";
	}

	@GetMapping("/getAllFYDetails")
	@ResponseBody
	public List<FYMaster> getAllFYDetails(Model model) {
		return fYMasterRepo.findAll();
	}

	@PostMapping("/updateFYDetails")
	public String updateFYDetails(@ModelAttribute("updateFYDetails") FYMaster fyMaster, Model model) {
		fYMasterRepo.save(fyMaster);
		return "configuration/AddFinancialMaster";
	}

	@GetMapping("/branchMaster")
	public String branch(Model model) {
		return "configuration/Branch";
	}

	@GetMapping("/getAllBranchMaster")
	@ResponseBody
	public List<BranchMaster> getAllBranchMaster(Model model) {
		return branchMasterRepo.findAll();
	}

	@PostMapping("/saveBranchMaster")
	public String saveBranchMaster(@ModelAttribute("saveBranchMaster") BranchMaster branchMaster, Model model) {
		branchMasterRepo.save(branchMaster);
		return "configuration/Branch";
	}

	@GetMapping("/AddBankAccount")
	public String AddBankAccount(Model model) {
		return "configuration/AddBankAccount";
	}

	@GetMapping("/getAllBankAccount")
	@ResponseBody
	public List<BankMaster> getAllBankAccount(Model model) {
		return bankMasterRepo.findAll();
	}

	@PostMapping("/saveBankAccount")
	public String saveBankAccount(@ModelAttribute("saveBankAccount") BankMaster bankMaster, Model model) {
		bankMasterRepo.save(bankMaster);
		return "configuration/AddBankAccount";
	}

	@GetMapping("/CodeSetting")
	public String CodeSetting(Model model) {
		return "configuration/CodeSetting";
	}

	@GetMapping("/DirectorDetail")
	public String DirectorDetail(Model model) {
		return "configuration/DirectorDetail";
	}

	@GetMapping("/getAllDirectorMaster")
	@ResponseBody
	public List<DirectorMaster> getAllDirectorMaster(Model model) {
		return directorMasterRepo.findAll();
	}

	@PostMapping("/saveDirectorMaster")
	public String saveDirectorMaster(@ModelAttribute("saveDirectorMaster") DirectorMaster directorMaster, Model model) {
		directorMasterRepo.save(directorMaster);
		return "configuration/DirectorDetail";
	}

	@GetMapping("/UserCreate")
	public String UserCreate(Model model) {
		return "configuration/UserCreate";
	}

	@GetMapping("/getAllUserMaster")
	@ResponseBody
	public List<UserMaster> getAllUserMaster(Model model) {
		return userMasterRepo.findAll();
	}

	@PostMapping("/userCreation")
	public String userCreation(@ModelAttribute("userCreation") UserMaster userMaster, Model model) {
		userMaster.setUserType("Admin");
		userMasterRepo.save(userMaster);
		return "configuration/UserCreate";
	}

	@GetMapping("/UserMenuAccess")
	public String UserMenuAccess(Model model) {
		return "configuration/UserMenuAccess";
	}
	
	
	@PostMapping("/userToServiceMap")
	public String userToServiceMap(@ModelAttribute("userToServiceMap") UserToServiceMap userToServiceMap, Model model) {
		userToServiceMapRepo.save(userToServiceMap);
		return "configuration/UserMenuAccess";
	}
	
	@GetMapping("/getAllServiceMap")
	@ResponseBody
	public List<Submodule> getAllUserToServiceMap1(Model model) {
		List<Submodule>  newList = new ArrayList<Submodule>();
		List<ModuleList> modList =  moduleListRepo.findAll();
		List<Submodule> submodList = submoduleRepo.findAll();
		submodList.stream().forEach(p->{
			modList.forEach(e->{
				if(e.getId() == Integer.parseInt(p.getModule())){
					Submodule subMod = new Submodule();
					subMod.setId(p.getId());
					subMod.setModule(e.getName());
					subMod.setName(p.getName());
					newList.add(subMod);
				}
			});
		});
		return newList;
	}
	
	
	@GetMapping("/UserActivityReport")
	public String UserActivityReport(Model model) {
		return "configuration/UserActivityReport";
	}
	
}
