package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.MaturityMaster;

@Repository
public interface MaturityMasterRepo extends JpaRepository<MaturityMaster, Integer> {

	
}
