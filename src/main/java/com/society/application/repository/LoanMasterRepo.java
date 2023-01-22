package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.LoanMaster;

@Repository
public interface LoanMasterRepo  extends JpaRepository<LoanMaster, Integer>{

}
