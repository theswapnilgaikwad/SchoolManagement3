package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.GoldLoanPlanMaster;
@Repository
public interface GoldLoanPlanRepo extends JpaRepository<GoldLoanPlanMaster, Integer>{

}
