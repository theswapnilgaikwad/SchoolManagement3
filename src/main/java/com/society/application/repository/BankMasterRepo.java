package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.BankMaster;

@Repository
public interface BankMasterRepo extends JpaRepository<BankMaster, Integer>{

}
