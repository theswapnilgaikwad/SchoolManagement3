package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.CompanyMaster;

@Repository
public interface CompanyMasterRepo extends JpaRepository<CompanyMaster, Integer>{
	
	CompanyMaster findBycompanyName(String companyName);
}
