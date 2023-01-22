package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.MISDeposit;
import com.society.application.model.Member;

@Repository
public interface MISDepositRepo extends JpaRepository<MISDeposit, Integer>{

}
