package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.Loan;
import com.society.application.model.LoanPlanMaster;
@Repository
public interface LoanRepo extends JpaRepository<Loan, Integer> {

}
